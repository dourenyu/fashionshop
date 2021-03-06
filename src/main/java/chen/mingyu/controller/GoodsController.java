package chen.mingyu.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import chen.mingyu.dao.GoodsDao;
import chen.mingyu.dao.ImagesDao;
import chen.mingyu.dao.MyLikeDao;
import chen.mingyu.domain.Goods;
import chen.mingyu.domain.Images;
import chen.mingyu.domain.MyLike;

@Controller
@RequestMapping("goods")             
public class GoodsController {

	@Resource
	private GoodsDao goodsDao;
	@Resource
	private MyLikeDao myLikeDao;
	@Resource
	private ImagesDao imagesDao;
	
	@RequestMapping("/addLike")
	@ResponseBody
	@Transactional
	public Map toAddLike(HttpServletRequest request,HttpSession session,@RequestParam("g_id")String g_id){
		Boolean isLogin = session.getAttribute("userId")==null?false:true;
		Map<String,String> map = new HashMap<>();
		if(isLogin){
			
			String userId =(String) session.getAttribute("userId");
			MyLike myLike = new MyLike();
			myLike.setG_id(g_id);
			myLike.setUserId(userId);
			MyLike isNUll = myLikeDao.selectByUserIdAndGid(myLike);
			if(isNUll!=null){
				map.put("message", "repetition");
				return map;
			}
			Goods goods = goodsDao.selectByG_id(g_id);
			int g_like = goods.getG_like();
			goods.setG_like(g_like+1);
			//改物品的喜欢数
			int isOk = goodsDao.alterLike(goods);
			
			//写入喜欢表
			myLike.setMl_id(UUID.randomUUID().toString());
			int isOk2 = myLikeDao.insertMyLike(myLike);
			map.put("message", "success");
			return map;
		}
		return map;
	}
	
	@RequestMapping("/selGoHo")
	public String selectGoodsOfHot(HttpServletRequest request,HttpSession session){
		
		List<Goods> ltGoods = goodsDao.selectGoodsAllByNumber();
		if(ltGoods!=null){
			session.setAttribute("ltGoods", ltGoods);
		}
		return "/index";
	}
	
	@RequestMapping("/selGoSex")
	public String selectGoodsBySex(HttpServletRequest request,HttpSession session,@RequestParam("g_sex")int g_sex){
		List<Goods> ltGoods = goodsDao.selectGoodsBySex(g_sex);
		if(ltGoods!=null){
			session.setAttribute("ltGoods", ltGoods);
		}
		return "/index";
	}
	
	//发布商品
	@Transactional
	@RequestMapping("/toPublish")
	@ResponseBody
	public Map<String,String> publishGoods(MultipartFile[] file,HttpServletRequest request,HttpSession session) throws IllegalStateException, IOException{
		String g_title = request.getParameter("g_title");
		String g_detail = request.getParameter("g_detail");
		String g_price = request.getParameter("g_price");
		String g_brand = request.getParameter("g_brand");
		int g_inventory = Integer.parseInt(request.getParameter("g_inventory"));
		int g_like = Integer.parseInt(request.getParameter("g_like"));
		int g_sex = Integer.parseInt(request.getParameter("g_sex"));
		String g_status = request.getParameter("g_status");
		String g_type = request.getParameter("g_type");
		String g_id = UUID.randomUUID().toString();
		Goods goods = new Goods(g_id,g_title,g_detail,g_price,g_brand,g_inventory,g_like,g_status,g_sex);
		goods.setG_type(g_type);
		
		int ispubGo = goodsDao.insertGoods(goods);
		int inMages = 0;
		
		String path = request.getServletContext().getRealPath("/upload");
		if(file!=null&&file.length>0){
			for(int i =0;i<file.length;i++){
				MultipartFile file1 = file[i];
				boolean b = file1.isEmpty();
				String name = System.currentTimeMillis()+file1.getOriginalFilename();
				file1.transferTo(new File(path,name));
				
				Images images = new Images();
				images.setG_id(g_id);;
				images.setIm_id(UUID.randomUUID().toString());
				images.setN_id(null);
				images.setPathName(name);
				inMages = imagesDao.insertImage(images);	
			}		
		}
		Map<String,String> map = new ConcurrentHashMap<String,String>();
		if(ispubGo!=0||inMages!=0){
			map.put("message", "success");
		}else{
			map.put("message", "error");
		}
		return map;
	}
	
	@RequestMapping("/toEdit")
	@ResponseBody
	public Map editGoods(HttpServletRequest request,HttpSession session){
		String g_id = request.getParameter("g_id");
		String g_title = request.getParameter("g_title");
		String g_detail = request.getParameter("g_detail");
		String g_price = request.getParameter("g_price");
		String g_brand = request.getParameter("g_brand");
		int g_inventory = Integer.parseInt(request.getParameter("g_inventory"));
		int g_like = Integer.parseInt(request.getParameter("g_like"));
		int g_sex = Integer.parseInt(request.getParameter("g_sex"));
		String g_status = request.getParameter("g_status");
		String g_type = request.getParameter("g_type");
		Goods goods = new Goods(g_id,g_title,g_detail,g_price,g_brand,g_inventory,1,g_status,g_sex);
		goods.setG_type(g_type);
		int isOk = goodsDao.editGoods(goods);
		Map map = new HashMap();
		if(isOk!=0){
			map.put("message", "success");
		}else{
			map.put("message", "error");
		}
		return map;
	}
	//跳转到编辑页
	@RequestMapping("/forEdit")
	public String forEdit(HttpServletRequest request,HttpSession session,@RequestParam("g_id")String g_id){
		Goods goods = goodsDao.selectByG_id(g_id);
		session.setAttribute("goodsForEdit", goods);
		return "eidtProduct";
	}
	
	
	@RequestMapping("/togoodsMange")
	public String selectGoodsAll(HttpServletRequest request,HttpSession session){
		List<Goods> ltGoods= goodsDao.selectGoodsAll();
		if(ltGoods!=null){
			session.setAttribute("ltGoodsMange", ltGoods);
		}
		return "/AdminProduct";
	}
	
	@RequestMapping("/toGInfo")
	public String selectGoodsInfo(HttpServletRequest request,HttpSession session,@RequestParam("g_id") String g_id){
		Goods goods= goodsDao.selectByG_id(g_id);
		if(goods!=null){
			session.setAttribute("goods", goods);
		}
		return "/goods";
	}
	
	//新品
	@RequestMapping("/toNewProduct")
	public String selectGoodsByStatus(HttpServletRequest request,HttpSession session){
		List<Goods> ltGoods = goodsDao.selectGoodsByStatus("C");
		session.setAttribute("ltGoodsNew", ltGoods);
		return "/newProduct";
	}
	//服装
	@RequestMapping("/toCloProduct")
	public String selectGoodsByType(HttpServletRequest request,HttpSession session){
		List<Goods> ltGoods = goodsDao.selectGoodsByType("A");
		session.setAttribute("ltGoodsClo", ltGoods);
		return "/clothesProduct";
	}
	
	//鞋子
	@RequestMapping("/toShoProduct")
	public String selectGoodsByTypeB(HttpServletRequest request,HttpSession session){
		List<Goods> ltGoods = goodsDao.selectGoodsByType("B");
		session.setAttribute("ltGoodsShoes", ltGoods);
		return "/shoesProduct";
	}
	
	
	
	//首页条件查询
	@RequestMapping("/selectGoodsByCondition")
	public String selectGoodsByCondition(HttpServletRequest request,HttpSession session){
		String condition = request.getParameter("keyword");
		List<Goods> ltCon = goodsDao.selectGoodsByCondition(condition);
		session.setAttribute("ltCon", ltCon);
		return "/conditionProduct";
	}
	
}
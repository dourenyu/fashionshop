package chen.mingyu.dao;

import java.util.List;

import chen.mingyu.domain.Goods;

public interface GoodsDao {

	public int insertGoods(Goods goods);
	
	//�������������ѯ������Ʒ
	public List<Goods> selectGoodsAllByNumber();
	
}

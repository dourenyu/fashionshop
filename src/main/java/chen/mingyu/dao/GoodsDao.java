package chen.mingyu.dao;

import java.util.List;

import chen.mingyu.domain.Goods;

public interface GoodsDao {

	public int insertGoods(Goods goods);
	
	//�������������ѯ������Ʒ
	
	public List<Goods> selectGoodsAllByNumber();
	
	//�޸���Ʒ�ĵ�����
	public int alterLike(Goods goods);
	
	//�߼�ɾ����Ʒ
	public int deleteGoods(String g_id);
	
}

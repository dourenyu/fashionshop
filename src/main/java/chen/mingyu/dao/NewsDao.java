package chen.mingyu.dao;

import java.util.List;

import chen.mingyu.domain.News;

public interface NewsDao {
	//������Ѷ
	public int insertNews(News news);
	
	//���ݷ�����ʱ������������
	public List<News> selectNewsAll();
}

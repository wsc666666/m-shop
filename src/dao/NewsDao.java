package dao;

import java.util.List;

import entity.News;

public interface NewsDao {
	public int insert(News news);
	public int delete(News news);
	public int update(News news);
	public List<News> getAll();
	public List<News> getNewsByTitle(String title);
	

}

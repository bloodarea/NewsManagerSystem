package com.hnjdzy.news.dao;

import java.sql.SQLException;
import java.util.List;

import com.hnjdzy.news.entity.News;

public interface NewsDao {
	/** 查询所有新闻 */
	List<News> findAllNews() throws SQLException;
	/** 查询指定新闻 */
	News findNews(int nid) throws SQLException;
	/** 查询某页的新闻 */
	List<News> findNewsByPage(int currpage,int pageSize) throws SQLException;
	/** 添加新闻 */
	int addNews(News news) throws SQLException;
	/** 修改新闻 */
	int setNews(News news) throws SQLException;
	/** 删除新闻 */
	int delNews(int nid) throws SQLException;
}

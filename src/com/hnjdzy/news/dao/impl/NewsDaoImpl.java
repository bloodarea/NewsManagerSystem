package com.hnjdzy.news.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hnjdzy.news.dao.BaseDao;
import com.hnjdzy.news.dao.NewsDao;
import com.hnjdzy.news.entity.News;
import com.hnjdzy.news.util.DatabaseUtil;

public class NewsDaoImpl extends BaseDao implements NewsDao{

	@Override
	public List<News> findAllNews(){
		List<News> newsList = new ArrayList<>();
		String sql = "select * from news";
		ResultSet rs = null;
		try {
			rs = executeQuery(sql, null);
			while(rs.next()) {
				News n = new News();
				n.setNid(rs.getInt("nid"));
				n.setNtid(rs.getInt("ntid"));
				n.setNtitle(rs.getString("ntitle"));
				n.setNauthor(rs.getString("nauthor"));
				n.setNcreatedate(rs.getDate("ncreateDate"));
				n.setNpicpath(rs.getString("npicPath"));
				n.setNcontent(rs.getString("ncontent"));
				n.setNmodifydate(rs.getDate("nmodifyDate"));
				n.setNsummary(rs.getString("nsummary"));
				newsList.add(n);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DatabaseUtil.closeAll(conn, ps, rs);
		}
		return newsList;
	}

	@Override
	public int addNews(News news) throws SQLException {
		String sql = "insert into news(ntid,ntitle,nauthor,ncreateDate,npicPath,ncontent,nmodifyDate,nsummary) values(?,?,?,?,?,?,?,?)";
		return executeUpdate(sql, news.getNtid(),news.getNtitle(),news.getNauthor(),news.getNcreatedate(),news.getNpicpath(),news.getNcontent(),news.getNmodifydate(),news.getNsummary());
	}

	@Override
	public int setNews(News news) throws SQLException {
		String sql = "update news set ntid=?,ntitle=?,nauthor=?,ncreateDate=?,npicPath=?,ncontent=?,nmodifyDate=?,nsummary=? where nid = ?";
		return executeUpdate(sql, news.getNtid(),news.getNtitle(),news.getNauthor(),news.getNcreatedate(),news.getNpicpath(),news.getNcontent(),news.getNmodifydate(),news.getNsummary(),news.getNid());
	}

	@Override
	public int delNews(int nid) throws SQLException {
		String sql = "delete from news where nid = ?";
		return executeUpdate(sql, nid);
	}

	@Override
	public News findNews(int nid){
		String sql = "select * from news where nid = ?";
		ResultSet rs = null;
		News n = null;
		try {
			rs = executeQuery(sql, nid);
			n = new News();
			while(rs.next()) {
				n.setNid(rs.getInt("nid"));
				n.setNtid(rs.getInt("ntid"));
				n.setNtitle(rs.getString("ntitle"));
				n.setNauthor(rs.getString("nauthor"));
				n.setNcreatedate(rs.getDate("ncreateDate"));
				n.setNpicpath(rs.getString("npicPath"));
				n.setNcontent(rs.getString("ncontent"));
				n.setNmodifydate(rs.getDate("nmodifyDate"));
				n.setNsummary(rs.getString("nsummary"));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DatabaseUtil.closeAll(conn, ps, rs);
		}
		return n;
	}

	@Override
	public List<News> findNewsByPage(int currpage, int pageSize){
		List<News> newsList = new ArrayList<>();
		String sql = "select * from news limit ?,?";
		ResultSet rs = null;
		try {
			rs = executeQuery(sql, currpage,pageSize);
			while(rs.next()) {
				News n = new News();
				n.setNid(rs.getInt("nid"));
				n.setNtid(rs.getInt("ntid"));
				n.setNtitle(rs.getString("ntitle"));
				n.setNauthor(rs.getString("nauthor"));
				n.setNcreatedate(rs.getDate("ncreateDate"));
				n.setNpicpath(rs.getString("npicPath"));
				n.setNcontent(rs.getString("ncontent"));
				n.setNmodifydate(rs.getDate("nmodifyDate"));
				n.setNsummary(rs.getString("nsummary"));
				newsList.add(n);
			}
		}catch (SQLException e) {
			// TODO: handle exception
		}finally {
			DatabaseUtil.closeAll(conn, ps, rs);
		}
		return newsList;
	}

}

package com.hnjdzy.news.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hnjdzy.news.dao.BaseDao;
import com.hnjdzy.news.dao.TopicDao;
import com.hnjdzy.news.entity.Topic;
import com.hnjdzy.news.util.DatabaseUtil;

public class TopicDaoImpl extends BaseDao implements TopicDao{

	@Override
	public List<Topic> findAllTopics() throws SQLException {
		List<Topic> topicList = new ArrayList<>();
		String sql = "select * from topic";
		ResultSet rs = executeQuery(sql, null);
		while(rs.next()) {
			Topic t = new Topic();
			t.setTid(rs.getInt("tid"));
			t.setTname(rs.getString("tname"));
			topicList.add(t);
		}
		DatabaseUtil.closeAll(null, null, rs);
		return topicList;
	}

	@Override
	public Topic findTopic(int tid) throws SQLException {
		List<Topic> topicList = new ArrayList<>();
		String sql = "select * from topic where tid = ?";
		ResultSet rs = executeQuery(sql, null);
		Topic t = new Topic();
		while(rs.next()) {
			t.setTid(rs.getInt("tid"));
			t.setTname(rs.getString("tname"));
			topicList.add(t);
		}
		DatabaseUtil.closeAll(null, null, rs);
		return t;
	}

	@Override
	public int addTopic(Topic topic) throws SQLException {
		String sql = "insert into topic(tid,tname) values(?,?)";
		return executeUpdate(sql, topic.getTid(),topic.getTname());
	}

	@Override
	public int setTopic(Topic topic) throws SQLException {
		String sql = "update topic set tid=?,tname=? where tid = ?";
		return executeUpdate(sql, topic.getTid(),topic.getTname(),topic.getTid());
	}

	@Override
	public int delTopic(int tid) throws SQLException {
		String sql = "delete from topic where tid = ?";
		return executeUpdate(sql, tid);
	}

}

package com.hnjdzy.news.dao;

import java.sql.SQLException;
import java.util.List;

import com.hnjdzy.news.entity.Topic;

public interface TopicDao {
	/** 查询所有主题 */
	List<Topic> findAllTopics() throws SQLException;
	/** 查询指定主题 */
	Topic findTopic(int tid) throws SQLException;
	/** 添加主题 */
	int addTopic(Topic topic) throws SQLException;
	/** 修改主题 */
	int setTopic(Topic topic) throws SQLException;
	/** 删除主题 */
	int delTopic(int tid) throws SQLException;
}

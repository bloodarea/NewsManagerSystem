<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.hnjdzy.news.dao.impl.TopicDaoImpl"%>
<%@page import="com.hnjdzy.news.dao.TopicDao"%>
<%@page import="com.hnjdzy.news.entity.Topic"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻管理系统 - 修改</title>
<style>
	@import url("./css/index.css");
</style>
</head>
<body>
		<div id="page">
			<div class="top">
				<h1><span class="darkblue">新闻</span><span class="blue">管理</span><span class="royalblue">系统</span> — 修改</h1>
				<hr />
			</div>
			<div class="main">
				<div class="left-list">
					<ul>
						<li><a href="index.jsp" class="header">首页</a></li>
						<hr />
						<li><a href="${request.contextPath}/webs/NewsServlet?func=allNews&currpage=1">所有新闻</a></li>
						<li><a href="AddNews.jsp">添加新闻</a></li>
					</ul>
				</div>
				<div class="content">
					<form action="NewsServlet" method="post" enctype="application/x-www-form-urlencoded">
						<table border="0" cellpadding="5" cellspacing="5">
							<tr>
								<td>新闻类型：</td>
								<td>
									<select name="ntid">
										<c:forEach items="${topicList}" var="t">
											<option value="${t.tid}" <c:if test = "${t.tid eq news.ntid}">selected</c:if>>${t.tname}</option>
										</c:forEach>	
									</select>
								</td>
							</tr>
							<tr>
								<td>新闻标题：</td>
								<td>
									<input type="text" size="30" name="ntitle" value="${news.ntitle}" />
								</td>
							</tr>
							<tr>
								<td>新闻作者：</td>
								<td>
									<input type="text" size="30" name="nauthor" value="${news.nauthor}" />
								</td>
							</tr>
							<tr>
								<td>新闻内容：</td>
								<td>
									<textarea rows="8" cols="31" name="ncontent">${news.ncontent}</textarea>
								</td>
							</tr>
							<tr>
								<td>新闻描述：</td>
								<td>
									<input type="text" size="30" name="nsummary" value="${news.nsummary}"/>
								</td>
							</tr>
							<tr>
								<td>图片地址：</td>
								<td>
									<input type="text" size="30" name="npicPath" value="${news.npicpath}"/>
								</td>
							</tr>
							<tr>
								<td></td>
								<td class="right" style="margin-right: 70px">
									<input type="hidden" name="nid" value="${news.nid}"/>
									<input type="hidden" name="ncreateDate" value="${news.ncreatedate}"/>
									<input type="hidden" name="func" value="setNews"/>
									<input style="padding: 5px 10px 5px 10px" type="submit" value="确认修改" />
									<a href="${request.contextPath}/webs/NewsServlet?func=allNews&currpage=1"><input style="padding: 5px 10px 5px 10px" type="button" value="取消" /></a>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</body>
</html> 
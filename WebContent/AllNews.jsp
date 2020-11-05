<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.hnjdzy.news.dao.impl.NewsDaoImpl"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hnjdzy.news.entity.News" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	@import url("./css/index.css");
	@import url("./css/AllNews.css");
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻管理系统 - 所有新闻</title>
</head>
	<body>
		<div id="page">
			<div class="top">
				<h1><span class="darkblue">新闻</span><span class="blue">管理</span><span class="royalblue">系统</span> — 所有新闻</h1>
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
						<table border="1" cellpadding="0" cellspacing="0">
							<tr>
								<th>
									<input type="hidden" name="func" value="delNews"/>
									<input type="submit" value="删除选中">
								</th>
								<th>新闻ID</th>
								<th>新闻主题ID</th>
								<th style="width: 220px;">新闻名称</th>
								<th>新闻作者</th>
								<th style="width: 100px;">新闻创建时间</th>
								<th style="width: 100px;">新闻修改时间</th>
								<th>新闻描述</th>
								<th style="width: 60px;">修改项</th>
								<th style="width: 60px;">删除项</th>
							</tr>
						<c:forEach items="${NewsPage.pageList}" var="news">
							<tr>
								<td><input type="checkbox" name="nids" value="${news.nid}"/></td>
								<td>${news.nid}</td>
								<td>${news.ntid}</td>
								<td><a href="${request.contextPath}/webs/NewsServlet?func=showNews&nid=${news.nid}">${news.ntitle}</a></td>
								<td>${news.nauthor}</td>
								<td>${news.ncreatedate}</td>
								<td>${news.nmodifydate}</td>
								<td>${news.nsummary}</td>
								<td><a href="${request.contextPath}/webs/NewsServlet?func=setNews&nid=${news.nid}">修改</a></td>
								<td><a href="${request.contextPath}/webs/NewsServlet?func=delNews&nid=${news.nid}">删除</a></td>
							</tr>
						</c:forEach>
						</table>
					</form>
					<br />
					<div class="footer">
						<a href="${request.contextPath}/webs/NewsServlet?func=allNews&currpage=1">首页</a>
						
						<c:if test="${NewsPage.currPage eq 1}">
							上一页
						</c:if>
						<c:if test="${NewsPage.currPage != 1}">
							<a href="${request.contextPath}/webs/NewsServlet?func=allNews&currpage=${NewsPage.currPage - 1}">上一页</a>
						</c:if>
						
						<c:forEach begin="1" end="${NewsPage.totalPage}" var="pageNum">
							<c:if test="${NewsPage.currPage eq pageNum}">
								${pageNum}
							</c:if>
							<c:if test="${NewsPage.currPage != pageNum}">
								<a href="${request.contextPath}/webs/NewsServlet?func=allNews&currpage=${pageNum}">${pageNum}</a>
							</c:if>
						</c:forEach>
						
						<c:if test="${NewsPage.currPage eq NewsPage.totalPage}">
							下一页
						</c:if>
						<c:if test="${NewsPage.currPage != NewsPage.totalPage}">
							<a href="${request.contextPath}/webs/NewsServlet?func=allNews&currpage=${NewsPage.currPage + 1}">下一页</a>
						</c:if>
						当前页：${NewsPage.currPage} 
						总条数：${NewsPage.totalSize}条 
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
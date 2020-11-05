<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻管理系统 - 首页</title>
<style>
	@import url("./css/index.css");
</style>
</head>
	<body>
		<div id="page">
			<div class="top">
				<h1><span class="darkblue">新闻</span><span class="blue">管理</span><span class="royalblue">系统</span> — 首页</h1>
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
					<h1>欢迎访问新闻管理系统</h1>
					<h1>请在左方导航栏选择功能</h1>
				</div>
			</div>
		</div>
	</body>
</html>
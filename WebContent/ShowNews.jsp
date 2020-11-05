<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻管理系统 - 查看新闻</title>
<style type="text/css">
	@import url("./css/index.css");
	@import url("./css/AllNews.css");
</style>
</head>
	<body>
		<div id="page">
			<div class="top">
				<h1><span class="darkblue">新闻</span><span class="blue">管理</span><span class="royalblue">系统</span> — 查看新闻</h1>
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
					<table border="1" cellpadding="5" cellspacing="0">
		<tr>
			<td style="width: 120px;">新闻ID：</td>
			<td>${news.nid}</td>
		</tr>
		<tr>
			<td>新闻主题ID：</td>
			<td>${news.ntid}</td>
		</tr>
		<tr>
			<td>新闻名称：</td>
			<td>${news.ntitle}</td>
		</tr>
		<tr>
			<td>新闻作者：</td>
			<td>${news.nauthor}</td>
		</tr>
		<tr>
			<td>新闻创建时间：</td>
			<td>${news.ncreatedate}</td>
		</tr>
		<tr>
			<td>新闻图片地址：</td>
			<td>${news.npicpath}</td>
		</tr>
		<tr>
			<td>新闻内容：</td>
			<td style="width: 1000px;">${news.ncontent}</td>
		</tr>
		<tr>
			<td>新闻修改时间：</td>
			<td>${news.nmodifydate}</td>
		</tr>
		<tr>
			<td>新闻描述：</td>
			<td>${news.nsummary}</td>
		</tr>
	</table>
				</div>
			</div>
		</div>
	</body>
</html>
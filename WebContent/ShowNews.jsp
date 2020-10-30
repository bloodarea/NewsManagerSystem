<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看新闻</title>
<style type="text/css">
	body{
		padding: 150px 180px;
	}
</style>
</head>
<body>
	<h2>查看新闻</h2>
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
			<td style="width: 700px;">${news.ncontent}</td>
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
</body>
</html>
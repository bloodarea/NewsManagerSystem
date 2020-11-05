<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻管理系统 - 添加新闻</title>
<style>
	@import url("./css/index.css");
</style>
</head>
	<body>
		<div id="page">
			<div class="top">
				<h1><span class="darkblue">新闻</span><span class="blue">管理</span><span class="royalblue">系统</span> —  添加新闻</h1>
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
										<option value = "1">国内</option>
										<option value = "2">国际</option>
										<option value = "3">军事</option>
										<option value = "4">体育</option>
										<option value = "5">娱乐</option>
										<option value = "6">社会</option>
										<option value = "7">财经</option>
										<option value = "8">科技</option>
										<option value = "9">健康</option>
										<option value = "10">汽车</option>
										<option value = "11">教育</option>
										<option value = "12">房产</option>
										<option value = "13">家居</option>
										<option value = "14">旅游</option>
										<option value = "15">文化</option>
										<option value = "16">其他</option>
										<option value = "28">探索</option>
										<option value = "29">另类</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>新闻标题：</td>
								<td>
									<input type="text" size="30" name="ntitle" />
								</td>
							</tr>
							<tr>
								<td>新闻作者：</td>
								<td>
									<input type="text" size="30" name="nauthor" />
								</td>
							</tr>
							<tr>
								<td>新闻内容：</td>
								<td>
									<textarea rows="5" cols="31" name="ncontent"></textarea>
								</td>
							</tr>
							<tr>
								<td>新闻描述：</td>
								<td>
									<input type="text" size="30" name="nsummary" />
								</td>
							</tr>
							<tr>
								<td>图片地址：</td>
								<td>
									<input type="text" size="30" name="npicPath" />
								</td>
							</tr>
							<tr>
								<td></td>
								<td class="right" style="margin-right: 110px">
									<input type="hidden" name="func" value="addNews"/>
									<input style="padding: 5px 10px 5px 10px" type="submit" value="添加新闻"/>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</body>
</html> 
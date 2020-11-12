<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript">
	var jsObj = {
			name:"张三",
			age:18,
			sex:"男"
	};
		$.ajax({
			"url":"testAjax",
			"type":"post",
			"data":{
				"obj":JSON.stringify(jsObj)
			},
			"dataType":"json",
			"success":function(result){
				alert(result.name);
				alert(result.age);
				alert(result.sex);
			},
			"error":function(){
				alert("error");
			}
		});
	</script>
</html>
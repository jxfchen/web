<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>练练*词</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  <script type="text/javascript" src="js/jquery-1.11.1.js"></script>
  <script type="text/javascript">
 	$(function(){
 		$("#p1").css('display','none');
 		$("#p2").css('display','none');
 		$("#p3").css('display','none');
			$(btn1).click(function(){  
 				 $(p1).toggle();
			});
			$(btn2).click(function(){ 
 				 $(p2).toggle();
			});
			$(btn3).click(function(){
 				 $(p3).toggle();
			});
		});
  </script>
  
  </head>
  
  <body>
  <tr>
  <td><button id=btn1>原文</button></td>
  <td><button id=btn2>默写</button></td>
  <td><button id=btn3>填空</button></td>
  </tr>
  <p id="p1">
              有子曰：“其为人也孝弟，而好犯上者，鲜矣；不好犯上，而好作乱者，未之有也。君子务本，本立而道生。孝弟也者，其为仁之本与！”<br>
  <p id="p2">         
            有子曰：<input type="text"/> ,<input type="text"/><input type="text"/>;<input type="text"/>,<input type="text"/>,<input type="text"/>.<input type="text"/>,<input type="text"/>.<input type="text"/>,<input type="text"/>!”
  <p id="p3">
              有子曰：“其为人也孝弟，<input type="text"/>，鲜矣；不好犯上，<input type="text"/>，未之有也。君子务本，<input type="text"/>。孝弟也者，<input type="text"/>！” 
  </body>
</html>

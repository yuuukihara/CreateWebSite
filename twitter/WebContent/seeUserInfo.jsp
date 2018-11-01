<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<style type="text/css">

	body{
		background-color: #F2F2F2;
	}
	.main{
		background-color:white;
		border:solid 2px black;
		width: 80%;
		height:80%;
		margin: 10% auto;
		max-width: 500px;
		padding:40px;
		border-radius:20px;
	}
	.title{
		text-align: center;
	}
	.contents{
		border:solid 2px black;
		border-radius:20px;
		padding:10px;
	}
	</style>
</head>
<body>

<div class="main">
<div class="title">ユーザー名一覧</div>
<div class="contents">
<s:iterator value="#session.uidtoList">
	・<s:property value="userName"/>
</s:iterator>
</div>
</div>
</body>
</html>
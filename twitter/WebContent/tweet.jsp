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
	.mainContents{
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
	.error{
		text-align: center;
	}
	.form{
	}
	.content{
	}
	.titlea{
		width:100%;
	}
	.text{
		width:100%;
		height:50px;
	}
	.btn{
		text-align: center;
	}
	.botton{
		width:120px;
	}
	</style>
</head>
<body>
	<div class="mainContents">
	<div class="main">
		<h1 class="title">つぶやく</h1>
		<div class="error"><s:property value="#session.errorMassage"/></div>
		<div class="form">
			<s:form action="TweetConfirmAction">
				<div class="content">タイトル<br>
				<s:textfield name="title" class="titlea"/><br></div>
				<div class="content">本文<br>
				<s:textarea name="text" class="text"/><br></div>
				<div class="btn">
					<s:submit value="ツイート" class="botton"/>
				</div>
			</s:form>
		</div>
	</div>
</div>

</body>
</html>
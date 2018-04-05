<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<title>ログイン</title>

<style type="text/css">

.top-wrapper {
	padding-top: 50px;
	padding-bottom: 200px;
	padding-right: 0px;
	padding-left: 100px;
	background-image:
		url("./images/login.jpg");
	background-size: cover;
	color: black;
	text-align: center;
	height:500px;
}

.container {
	width: 1170px;
	padding: 15px;
	margin: 0 auto;
}

.container h1{
	color:#BAD3FF;
  	letter-spacing:4px;
    font-size:60px;
    padding-top:80px;
    padding-left:550px;
    margin-bottom:0px;
}

.container h3{
	color:#BAD3FF;
  	letter-spacing:4px;
    font-size:30px;
    padding-left:550px;
}


body {

	padding:0;
	line-height:1.6;
	letter-spacing:1px;
	font-family:Verdana, Helvetica, sans-serif;
	font-size:12px;
	color:#333;
	background:#fff;
}
table {
	text-align:center;
	margin:0 auto;
}/
* ========ID LAYOUT======== */

#header {
	width: 100%;
	height: 80px;
	background-color: black;
}
#main {
	width: 100%;
	height: 500px;
	text-align: center;
	margin-top:50px;
	background-color:#FFFFF0;
	margin-top:0px;
	padding-top:50px;
}


	</style>
</head>

<body>

<jsp:include page="include_header.jsp" />


<div class="top-wrapper">
	<div class="container">
		<h1>LOGIN</h1>
		<h3>ログイン</h3>
	</div>
</div>


	<div id="main">
	<span style="color:red;font-weight:bold;"><s:if test="userId=null ||userName==null"><s:property value="message"/></s:if></span>
			<h3>商品を購入する際にはログインをお願いします。</h3>
			<s:form action="LoginAction">
				<table>
					<tr>
						<td>ユーザーID:</td>
						<td><s:textfield name="loginUserId"/></td>
					</tr>
					<tr>
						<td>パスワード:</td>
						<td>	<s:password name="loginPassword"/></td>
					</tr>


					<s:submit value="ログイン"/>
				</table>
			</s:form>
			<br/>

			<div>
				<span>新規ユーザー登録は
					<a href='<s:url action="UserCreateAction" />'>こちら</a>
				</span>
			</div>
		</div>


<div id="footer">
	<div id="pr">
	</div>
</div>

</body>
</html>

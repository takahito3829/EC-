<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta charset="utf-8">
	<title>UserCreate画面</title>
	<style type="text/css">
		/* ========TAG LAYOUT======== */


.top-wrapper {
	padding-top: 50px;
	padding-bottom: 200px;
	padding-right: 0px;
	padding-left: 100px;
	background-image:
		url("./images/signup.jpg");
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
    padding-top:300px;
    padding-left:550px;
    margin-bottom:0px;
}

.container h3{
	color:#BAD3FF;
  	letter-spacing:4px;
    font-size:30px;
    padding-left:550px;
}

.contents {
	width: 100%;
	height: 300px;
	text-align: center;
	margin-top:50px;
	background-color:#FFFFF0;
	margin-top:0px;
	padding-top:50px;
}


table {
	text-align:center;
	margin:0 auto;
}



	</style>
</head>
<body>
	<jsp:include page="include_header.jsp" />

	<div class="top-wrapper">
	<div class="container">
		<h1>SignUp</h1>
		<h3>ユーザー登録</h3>
	</div>
</div>


		<div class="contents">
			<s:if test="errorMessage != ''"><!-- UserCreateConfirmのerrormessageがカラでないなら。 -->
				<s:property value="errorMessage" escape="false" /><!-- escapeの初期値はtrueだがtrueだとエラーメッセージ -->
				<!-- を出すときの<brとかのコードも文字列で表示されてしまう。falseならコードとして表示。> -->
			</s:if>
			<table>
			<s:form action="UserCreateConfirmAction">
				<tr>
					<td>
						<label>ログインID:</label>
					</td>
					<td>
						<input type="text" name="loginUserId" value="" /><!-- 初期値として"空"にしておいて、ユーザー入力の値が""に入る -->
					</td>
				</tr>
				<tr>
					<td>
						<label>ログインPASS:</label>
					</td>
					<td>
						<input type="text" name="loginPassword" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>ユーザー名:</label>
					</td>
					<td>
						<input type="text" name="userName" value="" />
					</td>
				</tr>
				<s:submit value="登録"/>
			</s:form>
			</table>
			<div>
				<span>前画面に戻る場合は</span><a href='<s:url action="HomeAction" />'>こちら</a>
			</div>
		</div>
	<jsp:include page="include_footer.jsp" />
</body>
</html>
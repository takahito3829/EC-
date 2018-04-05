<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<link rel="stylesheet" href="./css/home.css">

<title>CatWith HOME</title>

</head>
<body>

<jsp:include page="include_header.jsp" />

	<div class="top-wrapper">
		<div class="container">
			<h1>
				For Those Who Love Cats<br> More than Anything Else.
			</h1>
			<p>〜全ての猫フリークのためのオープンサイト〜</p>
			<div class="btn-wrapper">

				<div class="btn signup">
					<a href='<s:url action="UserCreateAction"/>'>ユーザー登録</a>
				</div>

				<br>
				<div class="btn login">
					<a href='<s:url action="LoginAction"/>'>ログイン</a>
				</div>
				<div class="btn login2">
					<a href='<s:url action="LoginAction"/>'>ログイン</a>
				</div>

			</div>
		</div>
	</div>


	<div class="message-wrapper">
		<div class="container">
			<div class="heading">
				<h2>さぁ、あなたも世界の猫たちを見てみませんか?</h2>
				<h3>Let's explore the worlds with cats!</h3>
			</div>
			<span class="btn message"> <a
				href='<s:url action="ListAction"/>'>早速参加する</a>
			</span>
		</div>
	</div>

	<div class="contents-wrapper">
		<div class="contents-left"><img src="./images/leo.jpg"></div>
		<div class="contents-right"><img src="./images/relaxed.jpg"></div>
		<div class="contents-left2"><img src="./images/staring.jpg"></div>
		<div class="contents-right2"><img src="./images/surprised.jpg"></div>
		<div class="popup">The more cats around, the happier people become.</div>

	</div>

	<div class="message-wrapper2">
		<h3>〜すべての猫を愛する者たちへ送る〜</h3>
	</div>

<jsp:include page="include_footer.jsp" />


</body>

</html>
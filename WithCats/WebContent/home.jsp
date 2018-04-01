<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<link rel="stylesheet" href="./css/home.css">

<title>WithCats HOME画面</title>

</head>
<body>

	<header>
		<div class="header-left">
			<img class="logo" src="">
		</div>
		<div class="header-right">
			<a href='<s:url action="LoginAction"/>'>ログイン</a>
			<a href='<s:url action="InquiryAction"/>'>お問合わせ</a>
			<a href='<s:url action="HomeAction"/>'>HOME</a>
		</div>
	</header>

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

				<div class="btn login">
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
				href='<s:url action="CatsListAction"/>'>早速参加する</a>
			</span>
		</div>
	</div>


	<footer>
		<div class="footer left">
			<img
				src="http://www.si-serv.com/blog/wp-content/uploads/2010/05/cat03.jpg">
			<p>The More cats, the Happier people become.</p>
		</div>
		<div class="footer-right">
			<ul>
				<li>お問い合わせ</li>
				<li>運営団体</li>
				<li>利用規約</li>
			</ul>
		</div>
	</footer>


</body>

</html>
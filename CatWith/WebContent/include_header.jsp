<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<style>
	a {
  text-decoration: none;
}

header{
    position:fixed;
    top:0px;
    height:65px;
    width:100%;
    background-color: rgba(34, 49, 52, 0.9);
    z-index:10;
}

.header-left{
    float:left;
}

.logo{
     width:120px;
     margin-top:0px;
     line-height:65px;
     color:white;
     background-color:black;
     padding-left:25px;
     padding-right:25px;
     font-size:30px;
     font-family:cursive;
}

.header-right a:link	{
	color :white;
}

.header-right a:visited	{
	color : white;
}

.header-left a:link	{
	color :white;
}

.header-left a:visited	{
	color : white;
}


.header-right {
    float:right;
    transition:all 0.5s;
}

.header-right a{
    float:right;
    line-height:15px;
    background-color:gray;
    opacity:0.9;
    color:white;
    padding:25px;
    display:block;
    border:black solid 0.2px;
}

.header-right:hover{
    background-color: rgba(255, 255, 255, 0.5);
}






</style>


<header>
	<div class="header-left">
			<div class="logo"><a href='<s:url action="HomeAction"/>'>CatWith</a></div>
		</div>
		<div class="header-right">


			<s:if test="#session.loginFlg">
				<a href='<s:url action="InquiryAction"/>'>お問合わせ</a>
				<a href='<s:url action="HomeAction"/>'>HOME</a>
				<a href='<s:url action="LogoutAction"/>'>ログアウト</a>
			</s:if><s:else>
				<a href='<s:url action="InquiryAction"/>'>お問合わせ</a>
				<a href='<s:url action="HomeAction"/>'>HOME</a>
				<a href='<s:url action="LoginAction"/>'>ログイン</a>
			</s:else>


<span style="color:white;line-height:60px;padding:15px;">
	<s:if test="#session.loginFlg">
		ようこそ! <s:property value="#session.userName"/>さん
	</s:if><s:else>
		ようこそ! ゲストさん
	</s:else></span>

		</div>
</header>

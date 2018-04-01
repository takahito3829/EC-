<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>


	<link rel="stylesheet" href="./css/alatanapizza.css">
	<link rel="stylesheet" href="./css/userAdd.css">

	<title>お問合わせ内容確認</title>
</head>


<body>

	<div id="main">
	<div class="form-user-regist">

	<table>

	<tr><td colspan="2"><h3>ユーザー登録 確認</h3></td></tr>
    <tr><td colspan="2"><div class=moji2>お問合わせ内容は以下でよろしいですか？</div></td></tr>
    <tr><td colspan="2"><hr></td></tr>



	<tr id="box">
		<td>お名前（姓）</td>
		<td> <s:property value="familyName" /> </td>
	</tr>

	<tr id="box">
		<td>お名前（名）</td>
		<td> <s:property value="firstName" /> </td>
	</tr>

	<tr id="box">
		<td>ふりがな（姓）</td>
		<td> <s:property value="familyNameKana"/> </td>
	</tr>

	<tr id="box">
		<td>ふりがな（名）</td>
		<td> <s:property value="firstNameKana"/> </td>
	</tr>


	<tr id="box">
		<td>メールアドレス</td>
		<td> <s:property value="mail"/> </td>
	</tr>


	<tr id="box">
		<td>電話番号</td>
		<td> <s:property value="phoneNumber"/> </td>
	</tr>


	<tr id="box">
		<td>都道府県</td>
		<td> <s:if test="area==1">東京</s:if>
		<s:if test="area==2">神奈川</s:if>
		<s:if test="area==3">埼玉</s:if>
		<s:if test="area==4">千葉</s:if>
		</td>
	</tr>

	<tr id="box">
		<td>お問合わせ内容</td>
		<td> <s:property value="content"/> </td>
	</tr>

	<tr><td colspan="2"><hr></td></tr>

	<s:form action="inquiryCompleteAction">

	<tr>

		<td>
			<a href='<s:url action="InquiryCompleteAction"/>'>送信する</a>
		</td>
	</tr>


	<input type="hidden" name="familyName" value="<s:property value="familyName"/>">
	<input type="hidden" name="firstName" value="<s:property value="firstName"/>">
	<input type="hidden" name="familyNameKana" value="<s:property value="familyNameKana"/>">
	<input type="hidden" name="firstNameKana" value="<s:property value="firstNameKana"/>">
	<input type="hidden" name="phoneNumber" value="<s:property value="phoneNumber"/>">
	<input type="hidden" name="mail" value="<s:property value="mail"/>">
	<input type="hidden" name="area" value="<s:property value="area"/>">
	<input type="hidden" name="content" value="<s:property value="content"/>">


	</s:form>
	</table>
	</div>
	</div>


</body>
</html>
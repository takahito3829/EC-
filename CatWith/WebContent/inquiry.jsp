<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<link rel="stylesheet" href="./css/Inquiry.css">

<title>お問合わせ</title>


</head>


<body>

<jsp:include page="include_header.jsp" />


	<div class="top-wrapper">
		<div class="container">
			<h1>CONTACT</h1>
			<p>お問い合わせ</p>
		</div>
	</div>

	<div class="message-wrapper">
		<p>
			本サービスに関するご質問・ご意見・ご感想を承っております。<br>
			下記フォームに必要事項をご入力の上、送信ボタンを押してください。

		</p>
	</div>

	<div class="inquiryForm">

		<table>
			<s:form action="InquiryConfirmAction">

				<h3>お問い合わせフォーム</h3>


			<tbody>
				<tr>
					<td>お名前（姓）</td>
					<td><input type="text" name="familyName" placeholder="1-16文字"
						maxlength='16' value='<s:property value="familyName"/>'
						class="form" /></td>
				</tr>

				<tr>
					<td>お名前（名）</td>
					<td><input type="text" name="firstName" placeholder="1-16文字"
						maxlength='16' value='<s:property value="firstName"/>'
						class="form" /></td>
				</tr>

				<tr>
					<td>ふりがな（姓）</td>
					<td><input type="text" name="familyNameKana"
						placeholder="ひらがな 1-16文字" maxlength='16'
						value='<s:property value="familyNameKana"/>' class="form" /></td>
				</tr>

				<tr>
					<td>ふりがな（名）</td>
					<td><input type="text" name="firstNameKana"
						placeholder="ひらがな 1-16文字" maxlength='16'
						value='<s:property value="firstNameKana"/>' class="form" /></td>
				</tr>


				<tr>
					<td>メールアドレス</td>
					<td><input type="text" name="mail" placeholder="半角英数字 14-32文字"
						maxlength='32' value='<s:property value="mail"/>' class="form" /></td>
				</tr>

				<tr>
					<td>電話番号</td>
					<td><input type="text" name="phoneNumber"
						placeholder="半角でご入力下さい" maxlength='20'
						value='<s:property value="phoneNumber"/>' class="form" /></td>
				</tr>

				<tr>
					<td>都道府県</td>
					<td><select name="area" class="form">
							<option value="" selected>選択してください</option>
							<option value="1">東京</option>
							<option value="2">神奈川</option>
							<option value="3">埼玉</option>
							<option value="4">千葉</option>
					</select></td>
				</tr>



				<tr>
					<td>お問合わせ内容</td>
				</tr>

				<tr class="textbox">
					<s:textarea name="content" rows="30" cols="100"
						placeholder="お問い合わせ内容を入力してください" />
				</tr>


				<tr>
					<s:submit value="登録する"/>
				</tr>
			</tbody>


			</s:form>
		</table>
	</div>



</body>
</html>
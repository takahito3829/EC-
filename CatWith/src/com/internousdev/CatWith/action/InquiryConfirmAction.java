package com.internousdev.CatWith.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


public class InquiryConfirmAction extends ActionSupport implements SessionAware {


	private String familyName;
	private String firstName;
	private String familyNameKana;
	private String firstNameKana;
	private String phoneNumber;
	private String mail;
	private String area;
	private String content;

	private Map<String, Object> session;

	private String result;


	public String execute() {


		result=ERROR;



			if(familyName!=null &&firstName!=null &&familyNameKana!=null &&firstNameKana!=null &&phoneNumber!=null && mail!=null &&content!=null &&area!=null){
				session.put("familyName", familyName);
				session.put("firstName", firstName);
				session.put("familyNameKana", familyNameKana);
				session.put("firstNameKana", firstNameKana);
				session.put("phoneNumber", phoneNumber);
				session.put("mail", mail);
				session.put("area", area);
				session.put("content", content);
				session.put("inquiryFlg", true);


		 result=SUCCESS;
	}else {
		return result;
	}
	return result;
   }




	// ゲッターセッター



	public String getFamilyName() {
		return familyName;
	}

	public void setFamilyName(String familyName) {
		this.familyName=familyName;
	}


	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName=firstName;
	}


	public String getFamilyNameKana() {
		return familyNameKana;
	}

	public void setFamilyNameKana(String familyNameKana) {
		this.familyNameKana=familyNameKana;
	}


	public String getFirstNameKana() {
		return firstNameKana;
	}

	public void setFirstNameKana(String firstNameKana) {
		this.firstNameKana=firstNameKana;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber=phoneNumber;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area=area;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail=mail;
	}


	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content=content;
	}




	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}

	public Map<String, Object> getSession() {
		return session;
	}



}



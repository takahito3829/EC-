package com.internousdev.CatWith.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.CatWith.dao.InquiryCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;


public class InquiryCompleteAction extends ActionSupport implements SessionAware {


	private String familyName;
	private String firstName;
	private String familyNameKana;
	private String firstNameKana;
	private String phoneNumber;
	private String mail;
	private String area;
	private String content;

	public Map<String, Object> session;

	private InquiryCompleteDAO InquiryCompleteDAO=new InquiryCompleteDAO();




	public String execute() throws SQLException {




				if((boolean) session.get("inquiryFlg"))
				InquiryCompleteDAO.sendInquiry(
						session.get("familyName").toString(),
						session.get("firstName").toString(),
						session.get("familyNameKana").toString(),
						session.get("firstNameKana").toString(),
						session.get("phoneNumber").toString(),
						session.get("mail").toString(),
						session.get("area").toString(),
						session.get("content").toString());

				String result=SUCCESS;
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


	public String getFirstNameKana() {
		return firstNameKana;
	}

	public void setFirstNameKana(String firstNameKana) {
		this.firstNameKana=firstNameKana;
	}


	public String getFamilyNameKana() {
		return familyNameKana;
	}

	public void setFamilyNameKana(String familyNameKana) {
		this.familyNameKana=familyNameKana;
	}


	public String getPhonenumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber=phoneNumber;
	}


	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail=mail;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area=area;
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

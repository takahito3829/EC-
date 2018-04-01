package com.internousdev.template.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


public class GoHomeAction extends ActionSupport implements SessionAware {

	public Map<String,Object>session;

	public String execute() {
		return SUCCESS;
	}

	public Map<String,Object>getSession(){//この画面では戻るだけなのでゲッターは不要。
		return this.session;
	}

	@Override
	public void setSession(Map<String,Object>session) {
			this.session=session;
		}
}

package com.internousdev.template.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template.dao.BuyItemDAO;
import com.internousdev.template.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;


public class HomeAction extends ActionSupport implements SessionAware{

	public Map<String,Object>session;//セッションの箱を作りputで情報を詰める。

	public String execute() {
		String result="login";
		if(session.containsKey("id")) {//すでにユーザー登録をしてidがあるならサクセスでjspに飛ばす。そうでないならloginを返し、login.jspに
			com.internousdev.template.dao.BuyItemDAO buyItemDAO=new BuyItemDAO();
			BuyItemDTO buyItemDTO=buyItemDAO.getBuyItemInfo();  //buyItemDAOのgetBuyItemメソッドを実行.SQLをDTOにつめた。
			session.put("id",buyItemDTO.getId());
			session.put("buyItem_name",buyItemDTO.getItemName());//buyItemDTOクラスのゲッターを実行！DTOからデータを呼び出し。
			session.put("buyItem_price", buyItemDTO.getItemPrice());//session.putの.は構文上記とは関係なし。

			result=SUCCESS;
		}
		return result;
	}

	@Override
	public void setSession(Map<String,Object>session) {
		this.session=session;
	}

	public Map<String,Object>getSession(){
		return session;
	}
}

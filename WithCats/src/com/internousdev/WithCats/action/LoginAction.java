package com.internousdev.WithCats.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.WithCats.dao.BuyItemDAO;
import com.internousdev.WithCats.dao.LoginDAO;
import com.internousdev.WithCats.dto.BuyItemDTO;
import com.internousdev.WithCats.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;



public class LoginAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	private String result;
	public Map<String,Object>session;
	private LoginDAO loginDAO=new LoginDAO();
	private LoginDTO loginDTO=new LoginDTO();
	private BuyItemDAO buyItemDAO=new BuyItemDAO();

		public String execute() {
			result=ERROR;
			loginDTO=loginDAO.getLoginUserInfo(loginUserId,loginPassword);
			session.put("loginUser", loginDTO);//loginDTOはオブジェクト,普通の変数ではなくクラスそのものを表すオブジェクト。
			//DBのユーザー名とパスワードをつめている。

			if(((LoginDTO)session.get("loginUser")).getLoginFlg()){//オブジェクトからkey "loginUser"を用いてgetloginflgの値を取ってきている。
					result=SUCCESS;//最初にキャストをしていて、オブジェクトからデータを取る場合はキャストが必要。
					BuyItemDTO buyItemDTO=buyItemDAO.getBuyItemInfo();

					session.put("login_user_id", loginDTO.getLoginId());
					session.put("id", buyItemDTO.getId());
					session.put("buyItem_name",buyItemDTO.getItemName());
					session.put("buyItem_price", buyItemDTO.getItemPrice());

					return result;
		}
			return result;
	}
		public String getLoginUserId() {
			return loginUserId;
		}

		public void setLoginUserId(String loginUserId) {
			this.loginUserId=loginUserId;
		}

		public String getLoginPassword() {
			return loginPassword;
		}

		public void setLoginPassword(String loginPassword) {
			this.loginPassword=loginPassword;
		}

		@Override//親クラスの内容を書き換える。
		public void setSession(Map<String,Object>session) {
			this.session=session;

	}
}

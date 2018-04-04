package com.internousdev.CatWith.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;

import com.internousdev.CatWith.util.DBConnector;

public class UserCreateConfirmDAO {


		private boolean result=false;


		public Map<String, Object> session;





		public boolean getUserInfo(String loginUserId, String loginPassword){


			DBConnector db = new DBConnector();


			Connection con = db.getConnection();



			String sql="SELECT * FROM user_info";


			try{

				PreparedStatement ps = con.prepareStatement(sql);


				ResultSet rs = ps.executeQuery();



				while(rs.next()){


					String userId = rs.getString("user_id");

					if(userId.equals(loginUserId)){


						result = false;


						return result;

					}else{
						result = true;
					}
				}

			}catch(Exception e){

				e.printStackTrace();
			}

			return result;
		}

		public Map<String, Object> getSession(){
			return session;
		}
		public void setSession(Map<String, Object> session){
			this.session=session;
		}
}




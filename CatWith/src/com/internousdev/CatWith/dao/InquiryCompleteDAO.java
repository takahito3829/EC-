package com.internousdev.CatWith.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.CatWith.util.DBConnector;



public class InquiryCompleteDAO {


	private String sql="INSERT INTO inquiry_info(family_name,first_name,family_name_kana,first_name_kana,email,phone_number,area,content) VALUES(?,?,?,?,?,?,?,?)";



	public void sendInquiry(String familyname, String firstname, String familynamekana,String firstnamekana, String email, String phoneNumber, String area, String content) throws SQLException {

		DBConnector db=new DBConnector();
		Connection con=db.getConnection();


		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, familyname);
			ps.setString(2, firstname);
			ps.setString(3, familynamekana);
			ps.setString(4, firstnamekana);
			ps.setString(5, email);
			ps.setString(6, phoneNumber);
			ps.setString(7, area);
			ps.setString(8, content);
            ps.execute();

		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
		    con.close();
		}
        }
}


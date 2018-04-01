package com.internousdev.template.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBConnector {
private static String driverName = "com.mysql.jdbc.Driver";
private static String url = "jdbc:mysql://localhost/ecsite";
private static String user = "root";
private static String password = "mysql";

public Connection getConnection() {
Connection con = null;//Connectionはコネクション型のこと。conをコネクション型に設定
try {
	Class.forName(driverName);
	con = (Connection) DriverManager.getConnection(url,user,password);//=よりも右側をコネクション型に設定してconと同じデータ型にしておく。
	} catch(ClassNotFoundException e) {
	e.printStackTrace();
	} catch(SQLException e) {
	e.printStackTrace();
	}
	return con;
}
}
package com.SSMS.dao;

import com.SSMS.util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

public class LoginDao {
	
	public HashMap selectUser(String userName){
		HashMap map = new HashMap<>();
		try {
			DBUtil util = new DBUtil();
			Connection conn = util.getConnection();
			Statement st = util.getStatenent();
			String sql = "select *from user where username='"+userName+"';";
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()){
				String password = rs.getString("password");
				String type = rs.getString("type");
				map.put(type,password);
			}
			util.close(rs,conn,st);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return map;
	}
}

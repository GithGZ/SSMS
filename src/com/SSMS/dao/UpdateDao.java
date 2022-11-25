package com.SSMS.dao;

import com.SSMS.util.DBUtil;
import java.sql.Connection;
import java.sql.Statement;

public class UpdateDao {
    public String update(String password,String username) {
        String res = "fail";
        DBUtil util = new DBUtil();
        Connection conn = util.getConnection();
        Statement st = util.getStatenent();
        String sql = "update user set password = '"+password+"' where username = '"+username+"';";
        res = util.getSQLResult(sql,st);
        return res;
    }
}

package com.SSMS.dao;

import com.SSMS.util.DBUtil;

import java.sql.Connection;
import java.sql.Statement;

public class DelIdDao {
    public String del(String type, String id) {
        String res = "fail";
        DBUtil util = new DBUtil();
        Connection conn = util.getConnection();
        Statement st = util.getStatenent();
        String sql ="delete from "+type+" where id='"+id+"';";
        res = util.getSQLResult(sql,st);
        return res;
    }
}

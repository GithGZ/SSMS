package com.SSMS.dao;

import com.SSMS.util.DBUtil;

import java.sql.Connection;
import java.sql.Statement;

public class IdUpdateDao {
    public String update(String type, String id, String newtest, String typename) {
        String res = "fail";
        DBUtil util = new DBUtil();
        Connection conn = util.getConnection();
        Statement st = util.getStatenent();
        String sql = "update "+type+" set "+typename+" = '"+newtest+"' where id = '"+id+"';";
        res = util.getSQLResult(sql,st);
        return res;
    }
}

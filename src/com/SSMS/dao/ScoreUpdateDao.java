package com.SSMS.dao;

import com.SSMS.util.DBUtil;

import java.sql.Connection;
import java.sql.Statement;

public class ScoreUpdateDao {
    public String update(String newtest, String id, String typename) {
        String res = "fail";
        DBUtil util = new DBUtil();
        Connection conn = util.getConnection();
        Statement st = util.getStatenent();
        String sql = "update score set "+typename+" = '"+newtest+"' where id = '"+id+"';";
        res = util.getSQLResult(sql,st);
        return res;
    }
}

package com.SSMS.dao;

import com.SSMS.util.DBUtil;

import java.sql.Connection;
import java.sql.Statement;

public class InsScoreDao {
    public String insert(String stu_id, String course, String score, String exam) {
        String res = "fail";
        DBUtil util = new DBUtil();
        Connection conn = util.getConnection();
        Statement st = util.getStatenent();
        String sql ="insert into score(stu_id,course,score,exam) values('"+stu_id+"','"+course+"','"+score+"','"+exam+"');";
        res = util.getSQLResult(sql,st);
        return res;
    }
}

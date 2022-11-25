package com.SSMS.dao;

import com.SSMS.util.DBUtil;

import java.sql.Connection;
import java.sql.Statement;

public class InsIdDao {
    public String insert(String number, String name, String sex, String phone, String qq) {
        String res = "fail";
        DBUtil util = new DBUtil();
        Connection conn = util.getConnection();
        Statement st = util.getStatenent();
        String sql ="insert into student(number,name,sex,phone,qq) values('"+number+"','"+name+"','"+sex+"','"+phone+"','"+qq+"');";
        res = util.getSQLResult(sql,st);
        return res;
    }
}

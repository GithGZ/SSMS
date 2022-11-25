package com.SSMS.dao;

import com.SSMS.util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class StudentScoreDao {
    public List score(String stu) {
        List list = new ArrayList<>();
        DBUtil util = new DBUtil();
        Connection conn = util.getConnection();
        Statement st = util.getStatenent();
        String sql = "select *from score where stu_id='"+stu+"';";
        try {
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()){
                String id = rs.getString("id");
                String stu_id = rs.getString("stu_id");
                String course = rs.getString("course");
                String score = rs.getString("score");
                String exam = rs.getString("exam");
                HashMap map = new HashMap<>();
                map.put("id",id);
                map.put("stu_id",stu_id);
                map.put("course",course);
                map.put("score",score);
                map.put("exam",exam);
                list.add(map);
            }
            util.close(rs,conn,st);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
}

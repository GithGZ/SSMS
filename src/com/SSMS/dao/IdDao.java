package com.SSMS.dao;

import com.SSMS.util.DBUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class IdDao {

    public List id(String username, String t) {

        List list = new ArrayList<>();
        DBUtil util = new DBUtil();
        Connection conn = util.getConnection();
        Statement st = util.getStatenent();
        String sql = "select *from "+t+" where number = '"+username+"';";
        try {
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()){
                String id = rs.getString("id");
                String number = rs.getString("number");
                String name = rs.getString("name");
                String sex = rs.getString("sex");
                String phone = rs.getString("phone");
                String qq = rs.getString("qq");
                String type = rs.getString("type");
                HashMap map = new HashMap<>();
                map.put("id",id);
                map.put("number",number);
                map.put("name",name);
                map.put("sex",sex);
                map.put("phone",phone);
                map.put("qq",qq);
                map.put("type",type);
                list.add(map);
            }
            util.close(rs,conn,st);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
}

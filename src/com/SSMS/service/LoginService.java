package com.SSMS.service;


import com.SSMS.dao.LoginDao;

import java.util.HashMap;

public class LoginService {

    public HashMap login(String userName,String pwd){
        //浏览器和数据库做比对处理
        String res = "fail";//返回给servlet的结果 默认失败
        String type = null;
        if (userName != null) {
            LoginDao dao = new LoginDao();
            HashMap map = dao.selectUser(userName);
            String str = map.keySet().toString();
            type = str.substring(1,str.length()-1);
            String password = (String) map.get(type);
            if (password !=null&&pwd.equals(password)) {
                res = "success";  //成功
            }
        }
        HashMap map = new HashMap();
        map.put(type,res);
        return map;

    }

}

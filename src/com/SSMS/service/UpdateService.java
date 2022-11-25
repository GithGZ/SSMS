package com.SSMS.service;

import com.SSMS.dao.UpdateDao;

public class UpdateService {
    public String update(String password, String username) {
        String res = "fail";
        UpdateDao ud = new UpdateDao();
        res = ud.update(password,username);
        return res;
    }
}

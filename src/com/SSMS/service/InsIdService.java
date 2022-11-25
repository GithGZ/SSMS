package com.SSMS.service;

import com.SSMS.dao.InsIdDao;

public class InsIdService {
    public String insert(String number, String name, String sex, String phone, String qq) {
        InsIdDao iid = new InsIdDao();
        String res = iid.insert(number,name,sex,phone,qq);
        return res;
    }
}

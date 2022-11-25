package com.SSMS.service;

import com.SSMS.dao.DelIdDao;

public class DelIdService {
    public String del(String type, String id) {
        DelIdDao did = new DelIdDao();
        String res = did.del(type,id);
        return res;
    }
}

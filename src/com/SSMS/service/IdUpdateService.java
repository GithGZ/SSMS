package com.SSMS.service;

import com.SSMS.dao.IdUpdateDao;

public class IdUpdateService {
    public String update(String type, String id, String newtest, String typename) {
        IdUpdateDao iud = new IdUpdateDao();
        String res = iud.update(type,id,newtest,typename);
        return res;
    }
}

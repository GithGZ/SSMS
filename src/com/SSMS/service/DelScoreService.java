package com.SSMS.service;

import com.SSMS.dao.DelScoreDao;

public class DelScoreService {
    public String del(String id) {
        DelScoreDao dsd = new DelScoreDao();
        String res = dsd.del(id);
        return res;
    }
}

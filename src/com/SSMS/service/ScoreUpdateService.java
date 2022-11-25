package com.SSMS.service;

import com.SSMS.dao.ScoreUpdateDao;

public class ScoreUpdateService {
    public String update(String newtest, String id, String typename) {
        ScoreUpdateDao sud = new ScoreUpdateDao();
        String res = sud.update(newtest,id,typename);
        return res;

    }
}

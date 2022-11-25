package com.SSMS.service;

import com.SSMS.dao.InsScoreDao;

public class InsScoreService {
    public String insert(String stu_id, String course, String score, String exam) {
        InsScoreDao isd = new InsScoreDao();
        String res = isd.insert(stu_id,course,score,exam);
        return res;
    }
}

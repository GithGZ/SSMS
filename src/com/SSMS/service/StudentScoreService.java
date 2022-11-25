package com.SSMS.service;

import com.SSMS.dao.StudentScoreDao;

import java.util.List;

public class StudentScoreService {
    public List score(String stu) {
        StudentScoreDao ssd = new StudentScoreDao();
        List list = ssd.score(stu);
        return list;
    }
}

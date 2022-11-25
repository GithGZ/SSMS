package com.SSMS.service;

import com.SSMS.dao.TeacherScoreDao;

import java.util.List;

public class TescherScoreService {
    public List score() {
        TeacherScoreDao tsd = new TeacherScoreDao();
        List list = tsd.score();
        return list;
    }
}

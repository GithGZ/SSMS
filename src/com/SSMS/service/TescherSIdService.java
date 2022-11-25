package com.SSMS.service;

import com.SSMS.dao.TeacherSIdDao;
import com.SSMS.dao.TeacherScoreDao;

import java.util.List;

public class TescherSIdService {
    public List id() {
        TeacherSIdDao tsd = new TeacherSIdDao();
        List list = tsd.id();
        return list;
    }
}

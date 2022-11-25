package com.SSMS.service;

import com.SSMS.dao.IdDao;

import java.util.List;

public class IdService {
    public List id(String username, String type) {
        IdDao id = new IdDao();
        return id.id(username,type);
    }
}

package com.sanjay.springtiles.controller;

import com.sanjay.springtiles.entity.DeviceReport;
import com.sanjay.springtiles.entity.User;
import com.sanjay.springtiles.repository.DeviceReportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by tuedang on 9/15/16.
 */
@RestController
@RequestMapping("rest")
public class JsonProviderController {

    @Autowired
    private DeviceReportRepository deviceReportRepository;

    @RequestMapping(value = "/users", method = RequestMethod.GET,  produces = "application/json")
    public List<User> listAllUsers() {
        User u = user();
        List<User> userList = new ArrayList<User>();
        userList.add(u);
        return userList;
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET,  produces = "application/json")
    public User user() {
        User u = new User();
        u.setId(1);
        u.setEmail("haha@gmail.com");
        return u;
    }

    @RequestMapping(value = "/devicereports", method = RequestMethod.GET,  produces = "application/json")
    public List<DeviceReport> deviceReport() {
        return deviceReportRepository.findAll();
    }
}

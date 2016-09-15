package com.sanjay.springtiles.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import com.sanjay.springtiles.entity.DeviceReport;
import com.sanjay.springtiles.repository.DeviceReportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.sanjay.springtiles.entity.Role;
import com.sanjay.springtiles.entity.User;
import com.sanjay.springtiles.repository.RoleRepository;
import com.sanjay.springtiles.repository.UserRepository;

@Transactional
@Service
public class InitDbService {

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private DeviceReportRepository deviceReportRepository;


    @PostConstruct
    public void init() {
        if (roleRepository.findByName("ROLE_ADMIN") == null) {
            Role roleUser = new Role();
            roleUser.setName("ROLE_USER");
            roleRepository.save(roleUser);

            Role roleAdmin = new Role();
            roleAdmin.setName("ROLE_ADMIN");
            roleRepository.save(roleAdmin);

            User userAdmin = new User();
            userAdmin.setEnabled(true);
            userAdmin.setName("admin");
            userAdmin.setProfileImage("absolute.png");
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            userAdmin.setPassword(encoder.encode("password"));
            List<Role> roles = new ArrayList<Role>();
            roles.add(roleAdmin);
            roles.add(roleUser);
            userAdmin.setRoles(roles);
            userRepository.save(userAdmin);

            DeviceReport deviceReport = new DeviceReport();
            deviceReport.setId(1);
            deviceReport.setStatus("ERROR");
            deviceReportRepository.save(deviceReport);

//            InitDataLoader.load(deviceReportRepository, "data/init-data.yml");
        }

    }
}

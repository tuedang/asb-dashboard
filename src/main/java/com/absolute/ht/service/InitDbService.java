package com.absolute.ht.service;

import com.absolute.ht.entity.Role;
import com.absolute.ht.entity.User;
import com.absolute.ht.repository.DeviceReportRepository;
import com.absolute.ht.repository.RoleRepository;
import com.absolute.ht.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

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

            InitDataLoader.load(deviceReportRepository, "/data/devicereport-data.yml");
        }

    }
}

package com.absolute.ht.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.absolute.ht.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Integer>{

	Role findByName(String name);

}

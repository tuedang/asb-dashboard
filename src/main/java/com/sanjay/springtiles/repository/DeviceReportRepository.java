package com.sanjay.springtiles.repository;

import com.sanjay.springtiles.entity.DeviceReport;
import com.sanjay.springtiles.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DeviceReportRepository extends JpaRepository<DeviceReport, Integer> {
	
}

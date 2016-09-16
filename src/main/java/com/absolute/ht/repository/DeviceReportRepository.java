package com.absolute.ht.repository;

import com.absolute.ht.entity.DeviceReport;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DeviceReportRepository extends JpaRepository<DeviceReport, String> {
    List<DeviceReport> findByCategoryOrderByLastUpdatedDesc(String category);
    int countByCategory(String category);
    int countByCategoryAndStreamStatus(String category, String streamStatus);
    List<DeviceReport> findAllByOrderByLastUpdatedDesc();
}

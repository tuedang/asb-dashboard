package com.absolute.ht.controller;

import com.absolute.ht.dto.StatusReport;
import com.absolute.ht.entity.DeviceReport;
import com.absolute.ht.repository.DeviceReportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

/**
 * Created by tuedang on 9/15/16.
 */
@RestController
@RequestMapping("rest")
public class JsonProviderController {

    private static final String CATEGORY_THEFT_REPORT = "Theft Reported";
    private static final String CATEGORY_FROZEN = "Frozen";
    private static final String CATEGORY_POLICY_ERROR = "Policy - Errror";
    private static final String CATEGORY_DATA_AT_RISK = "Data At-Risk";

    @Autowired
    private DeviceReportRepository deviceReportRepository;

    @RequestMapping(value = "/device/list", method = RequestMethod.GET,  produces = "application/json")
    public List<DeviceReport> listDeviceReport() {
        return deviceReportRepository.findAllByOrderByLastUpdatedDesc();
    }

    @RequestMapping(value = "/device/{id}", method = RequestMethod.GET,  produces = "application/json")
    public DeviceReport getDeviceReport(@PathVariable("id") String deviceId) {
        return deviceReportRepository.findOne(deviceId);
    }

    @RequestMapping(value = "/device/status", method = RequestMethod.GET, produces = "application/json")
    public List<StatusReport> countStatus() {
        StatusReport theftReport = new StatusReport(CATEGORY_THEFT_REPORT,
                deviceReportRepository.countByCategory(CATEGORY_THEFT_REPORT),
                1);
        StatusReport frozen = new StatusReport(CATEGORY_FROZEN,
                deviceReportRepository.countByCategory(CATEGORY_FROZEN),
                2);
        StatusReport policyError = new StatusReport(CATEGORY_POLICY_ERROR,
                deviceReportRepository.countByCategory(CATEGORY_POLICY_ERROR),
                3);
        StatusReport dataAtRisk = new StatusReport(CATEGORY_DATA_AT_RISK,
                deviceReportRepository.countByCategory(CATEGORY_DATA_AT_RISK),
                4);
        return Arrays.asList(theftReport, frozen, policyError, dataAtRisk);
    }
}

package com.absolute.ht.controller;

import com.absolute.ht.dto.StatusReport;
import com.absolute.ht.entity.DeviceReport;
import com.absolute.ht.repository.DeviceReportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;
import static com.absolute.ht.entity.DeviceReport.*;

/**
 * Created by tuedang on 9/15/16.
 */
@RestController
@RequestMapping("rest")
public class JsonProviderController {

    @Autowired
    private DeviceReportRepository deviceReportRepository;

    @RequestMapping(value = "/device/{deviceId}/viewed", method = RequestMethod.POST, produces = "application/json")
    public DeviceReport markAsRead(@PathVariable("deviceId") String deviceId) {
        DeviceReport deviceReport = deviceReportRepository.findOne(deviceId);
        deviceReport.setStreamStatus(DeviceReport.STREAM_VIEWED);
        return deviceReportRepository.save(deviceReport);
    }

    @RequestMapping(value = "/device/list", method = RequestMethod.GET,  produces = "application/json")
    public List<DeviceReport> listDeviceReport(@RequestParam(value = "cat", required=false) String category) {
        if(!StringUtils.isEmpty(category)) {
            return deviceReportRepository.findByCategoryOrderByLastUpdatedDesc(category);
        } else {
            return deviceReportRepository.findAllByOrderByLastUpdatedDesc();
        }
    }

    @RequestMapping(value = "/device/{id}", method = RequestMethod.GET,  produces = "application/json")
    public DeviceReport getDeviceReport(@PathVariable("id") String deviceId) {
        return deviceReportRepository.findOne(deviceId);
    }

    @RequestMapping(value = "/device/status", method = RequestMethod.GET, produces = "application/json")
    public List<StatusReport> countStatus() {
        StatusReport theftReport = new StatusReport(CATEGORY_THEFT_REPORT,
                deviceReportRepository.countByCategory(CATEGORY_THEFT_REPORT),
                1,
                deviceReportRepository.countByCategoryAndStreamStatus(CATEGORY_THEFT_REPORT, DeviceReport.STREAM_CHANGED));
        StatusReport frozen = new StatusReport(CATEGORY_FROZEN,
                deviceReportRepository.countByCategory(CATEGORY_FROZEN),
                2,
                deviceReportRepository.countByCategoryAndStreamStatus(CATEGORY_FROZEN, DeviceReport.STREAM_CHANGED));
        StatusReport policyError = new StatusReport(CATEGORY_POLICY_ERROR,
                deviceReportRepository.countByCategory(CATEGORY_POLICY_ERROR),
                3,
                deviceReportRepository.countByCategoryAndStreamStatus(CATEGORY_POLICY_ERROR, DeviceReport.STREAM_CHANGED));
        StatusReport dataAtRisk = new StatusReport(CATEGORY_DATA_AT_RISK,
                deviceReportRepository.countByCategory(CATEGORY_DATA_AT_RISK),
                4,
                deviceReportRepository.countByCategoryAndStreamStatus(CATEGORY_DATA_AT_RISK, DeviceReport.STREAM_CHANGED));
        return Arrays.asList(theftReport, frozen, policyError, dataAtRisk);
    }
}

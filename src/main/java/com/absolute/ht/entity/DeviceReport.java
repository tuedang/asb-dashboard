package com.absolute.ht.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created by tuedang on 9/15/16.
 */
@Entity
@Table(name = "device_report")
public class DeviceReport {
    @Id
    @Column(name = "device_id")
    private String id;

    @Column(name = "status")
    private String status;

    @Column(name = "lastUpdated")
    private Date lastUpdated;

    @Column(name = "category")
    private String category;

    @Column(name = "esn")
    private String esn;

    @Column(name = "stream_status")
    private String streamStatus; //NEW, CHANGE, VIEWED

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getStreamStatus() {
        return streamStatus;
    }

    public void setStreamStatus(String streamStatus) {
        this.streamStatus = streamStatus;
    }

    public String getEsn() {
        return esn;
    }

    public void setEsn(String esn) {
        this.esn = esn;
    }

}

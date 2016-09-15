package com.sanjay.springtiles.entity;

import org.hibernate.validator.constraints.Email;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

/**
 * Created by tuedang on 9/15/16.
 */
@Entity
@Table(name = "device_report")
public class DeviceReport {
    @Id
    @GeneratedValue
    private Integer id;

    @Column(name = "status")
    private String status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }


}

package com.absolute.ht.dto;

/**
 * Created by tuedang on 9/15/16.
 */
public class StatusReport {

    public StatusReport() {
    }

    public StatusReport(String status, Integer quantity, Integer priority, Integer newStream) {
        this.status = status;
        this.quantity = quantity;
        this.priority = priority;
        this.newStream = newStream;
    }

    private String status;
    private Integer quantity;
    private Integer priority;
    private Integer newStream;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getPriority() {
        return priority;
    }

    public void setPriority(Integer priority) {
        this.priority = priority;
    }

    public Integer getNewStream() {
        return newStream;
    }

    public void setNewStream(Integer newStream) {
        this.newStream = newStream;
    }
}

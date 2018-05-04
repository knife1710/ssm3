package com.oracle.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class TbClass {
    private Integer classid;

    private String classname;

    private Integer classtypeid;

    private Integer teacherid;

    private Integer classGuideid;

    private Integer jobGuideid;

    @DateTimeFormat(iso=ISO.DATE)
    private Date createddate;

    private Date enddate;

    private Integer stateid=101;

    private String comment;

    public Integer getClassid() {
        return classid;
    }

    public void setClassid(Integer classid) {
        this.classid = classid;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname == null ? null : classname.trim();
    }

    public Integer getClasstypeid() {
        return classtypeid;
    }

    public void setClasstypeid(Integer classtypeid) {
        this.classtypeid = classtypeid;
    }

    public Integer getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(Integer teacherid) {
        this.teacherid = teacherid;
    }

    public Integer getClassGuideid() {
        return classGuideid;
    }

    public void setClassGuideid(Integer classGuideid) {
        this.classGuideid = classGuideid;
    }

    public Integer getJobGuideid() {
        return jobGuideid;
    }

    public void setJobGuideid(Integer jobGuideid) {
        this.jobGuideid = jobGuideid;
    }

    public Date getCreateddate() {
        return createddate;
    }

    public void setCreateddate(Date createddate) {
        this.createddate = createddate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public Integer getStateid() {
        return stateid;
    }

    public void setStateid(Integer stateid) {
        this.stateid = stateid;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }
}
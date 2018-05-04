package com.oracle.vo;

public class TbTeacher {
    private Integer teacherid;

    private String name;

    private Integer teachertypeid;

    private Integer state;

    private String comment;

    public Integer getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(Integer teacherid) {
        this.teacherid = teacherid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getTeachertypeid() {
        return teachertypeid;
    }

    public void setTeachertypeid(Integer teachertypeid) {
        this.teachertypeid = teachertypeid;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }
}
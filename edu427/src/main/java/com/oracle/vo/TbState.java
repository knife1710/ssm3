package com.oracle.vo;

public class TbState {
    private Integer stateid;

    private String statename;

    private Integer type;

    private String comment;

    public Integer getStateid() {
        return stateid;
    }

    public void setStateid(Integer stateid) {
        this.stateid = stateid;
    }

    public String getStatename() {
        return statename;
    }

    public void setStatename(String statename) {
        this.statename = statename == null ? null : statename.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getComment() {
        return comment;
    }

    @Override
	public String toString() {
		return "TbState [stateid=" + stateid + ", statename=" + statename + ", type=" + type + ", comment=" + comment
				+ "]";
	}

	public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }
}
package com.oracle.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class TbClassExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TbClassExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andClassidIsNull() {
            addCriterion("CLASSID is null");
            return (Criteria) this;
        }

        public Criteria andClassidIsNotNull() {
            addCriterion("CLASSID is not null");
            return (Criteria) this;
        }

        public Criteria andClassidEqualTo(Integer value) {
            addCriterion("CLASSID =", value, "classid");
            return (Criteria) this;
        }

        public Criteria andClassidNotEqualTo(Integer value) {
            addCriterion("CLASSID <>", value, "classid");
            return (Criteria) this;
        }

        public Criteria andClassidGreaterThan(Integer value) {
            addCriterion("CLASSID >", value, "classid");
            return (Criteria) this;
        }

        public Criteria andClassidGreaterThanOrEqualTo(Integer value) {
            addCriterion("CLASSID >=", value, "classid");
            return (Criteria) this;
        }

        public Criteria andClassidLessThan(Integer value) {
            addCriterion("CLASSID <", value, "classid");
            return (Criteria) this;
        }

        public Criteria andClassidLessThanOrEqualTo(Integer value) {
            addCriterion("CLASSID <=", value, "classid");
            return (Criteria) this;
        }

        public Criteria andClassidIn(List<Integer> values) {
            addCriterion("CLASSID in", values, "classid");
            return (Criteria) this;
        }

        public Criteria andClassidNotIn(List<Integer> values) {
            addCriterion("CLASSID not in", values, "classid");
            return (Criteria) this;
        }

        public Criteria andClassidBetween(Integer value1, Integer value2) {
            addCriterion("CLASSID between", value1, value2, "classid");
            return (Criteria) this;
        }

        public Criteria andClassidNotBetween(Integer value1, Integer value2) {
            addCriterion("CLASSID not between", value1, value2, "classid");
            return (Criteria) this;
        }

        public Criteria andClassnameIsNull() {
            addCriterion("CLASSNAME is null");
            return (Criteria) this;
        }

        public Criteria andClassnameIsNotNull() {
            addCriterion("CLASSNAME is not null");
            return (Criteria) this;
        }

        public Criteria andClassnameEqualTo(String value) {
            addCriterion("CLASSNAME =", value, "classname");
            return (Criteria) this;
        }

        public Criteria andClassnameNotEqualTo(String value) {
            addCriterion("CLASSNAME <>", value, "classname");
            return (Criteria) this;
        }

        public Criteria andClassnameGreaterThan(String value) {
            addCriterion("CLASSNAME >", value, "classname");
            return (Criteria) this;
        }

        public Criteria andClassnameGreaterThanOrEqualTo(String value) {
            addCriterion("CLASSNAME >=", value, "classname");
            return (Criteria) this;
        }

        public Criteria andClassnameLessThan(String value) {
            addCriterion("CLASSNAME <", value, "classname");
            return (Criteria) this;
        }

        public Criteria andClassnameLessThanOrEqualTo(String value) {
            addCriterion("CLASSNAME <=", value, "classname");
            return (Criteria) this;
        }

        public Criteria andClassnameLike(String value) {
            addCriterion("CLASSNAME like", value, "classname");
            return (Criteria) this;
        }

        public Criteria andClassnameNotLike(String value) {
            addCriterion("CLASSNAME not like", value, "classname");
            return (Criteria) this;
        }

        public Criteria andClassnameIn(List<String> values) {
            addCriterion("CLASSNAME in", values, "classname");
            return (Criteria) this;
        }

        public Criteria andClassnameNotIn(List<String> values) {
            addCriterion("CLASSNAME not in", values, "classname");
            return (Criteria) this;
        }

        public Criteria andClassnameBetween(String value1, String value2) {
            addCriterion("CLASSNAME between", value1, value2, "classname");
            return (Criteria) this;
        }

        public Criteria andClassnameNotBetween(String value1, String value2) {
            addCriterion("CLASSNAME not between", value1, value2, "classname");
            return (Criteria) this;
        }

        public Criteria andClasstypeidIsNull() {
            addCriterion("classTypeId is null");
            return (Criteria) this;
        }

        public Criteria andClasstypeidIsNotNull() {
            addCriterion("classTypeId is not null");
            return (Criteria) this;
        }

        public Criteria andClasstypeidEqualTo(Integer value) {
            addCriterion("classTypeId =", value, "classtypeid");
            return (Criteria) this;
        }

        public Criteria andClasstypeidNotEqualTo(Integer value) {
            addCriterion("classTypeId <>", value, "classtypeid");
            return (Criteria) this;
        }

        public Criteria andClasstypeidGreaterThan(Integer value) {
            addCriterion("classTypeId >", value, "classtypeid");
            return (Criteria) this;
        }

        public Criteria andClasstypeidGreaterThanOrEqualTo(Integer value) {
            addCriterion("classTypeId >=", value, "classtypeid");
            return (Criteria) this;
        }

        public Criteria andClasstypeidLessThan(Integer value) {
            addCriterion("classTypeId <", value, "classtypeid");
            return (Criteria) this;
        }

        public Criteria andClasstypeidLessThanOrEqualTo(Integer value) {
            addCriterion("classTypeId <=", value, "classtypeid");
            return (Criteria) this;
        }

        public Criteria andClasstypeidIn(List<Integer> values) {
            addCriterion("classTypeId in", values, "classtypeid");
            return (Criteria) this;
        }

        public Criteria andClasstypeidNotIn(List<Integer> values) {
            addCriterion("classTypeId not in", values, "classtypeid");
            return (Criteria) this;
        }

        public Criteria andClasstypeidBetween(Integer value1, Integer value2) {
            addCriterion("classTypeId between", value1, value2, "classtypeid");
            return (Criteria) this;
        }

        public Criteria andClasstypeidNotBetween(Integer value1, Integer value2) {
            addCriterion("classTypeId not between", value1, value2, "classtypeid");
            return (Criteria) this;
        }

        public Criteria andTeacheridIsNull() {
            addCriterion("TEACHERID is null");
            return (Criteria) this;
        }

        public Criteria andTeacheridIsNotNull() {
            addCriterion("TEACHERID is not null");
            return (Criteria) this;
        }

        public Criteria andTeacheridEqualTo(Integer value) {
            addCriterion("TEACHERID =", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridNotEqualTo(Integer value) {
            addCriterion("TEACHERID <>", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridGreaterThan(Integer value) {
            addCriterion("TEACHERID >", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridGreaterThanOrEqualTo(Integer value) {
            addCriterion("TEACHERID >=", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridLessThan(Integer value) {
            addCriterion("TEACHERID <", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridLessThanOrEqualTo(Integer value) {
            addCriterion("TEACHERID <=", value, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridIn(List<Integer> values) {
            addCriterion("TEACHERID in", values, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridNotIn(List<Integer> values) {
            addCriterion("TEACHERID not in", values, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridBetween(Integer value1, Integer value2) {
            addCriterion("TEACHERID between", value1, value2, "teacherid");
            return (Criteria) this;
        }

        public Criteria andTeacheridNotBetween(Integer value1, Integer value2) {
            addCriterion("TEACHERID not between", value1, value2, "teacherid");
            return (Criteria) this;
        }

        public Criteria andClassGuideidIsNull() {
            addCriterion("CLASS_GUIDEID is null");
            return (Criteria) this;
        }

        public Criteria andClassGuideidIsNotNull() {
            addCriterion("CLASS_GUIDEID is not null");
            return (Criteria) this;
        }

        public Criteria andClassGuideidEqualTo(Integer value) {
            addCriterion("CLASS_GUIDEID =", value, "classGuideid");
            return (Criteria) this;
        }

        public Criteria andClassGuideidNotEqualTo(Integer value) {
            addCriterion("CLASS_GUIDEID <>", value, "classGuideid");
            return (Criteria) this;
        }

        public Criteria andClassGuideidGreaterThan(Integer value) {
            addCriterion("CLASS_GUIDEID >", value, "classGuideid");
            return (Criteria) this;
        }

        public Criteria andClassGuideidGreaterThanOrEqualTo(Integer value) {
            addCriterion("CLASS_GUIDEID >=", value, "classGuideid");
            return (Criteria) this;
        }

        public Criteria andClassGuideidLessThan(Integer value) {
            addCriterion("CLASS_GUIDEID <", value, "classGuideid");
            return (Criteria) this;
        }

        public Criteria andClassGuideidLessThanOrEqualTo(Integer value) {
            addCriterion("CLASS_GUIDEID <=", value, "classGuideid");
            return (Criteria) this;
        }

        public Criteria andClassGuideidIn(List<Integer> values) {
            addCriterion("CLASS_GUIDEID in", values, "classGuideid");
            return (Criteria) this;
        }

        public Criteria andClassGuideidNotIn(List<Integer> values) {
            addCriterion("CLASS_GUIDEID not in", values, "classGuideid");
            return (Criteria) this;
        }

        public Criteria andClassGuideidBetween(Integer value1, Integer value2) {
            addCriterion("CLASS_GUIDEID between", value1, value2, "classGuideid");
            return (Criteria) this;
        }

        public Criteria andClassGuideidNotBetween(Integer value1, Integer value2) {
            addCriterion("CLASS_GUIDEID not between", value1, value2, "classGuideid");
            return (Criteria) this;
        }

        public Criteria andJobGuideidIsNull() {
            addCriterion("JOB_GUIDEID is null");
            return (Criteria) this;
        }

        public Criteria andJobGuideidIsNotNull() {
            addCriterion("JOB_GUIDEID is not null");
            return (Criteria) this;
        }

        public Criteria andJobGuideidEqualTo(Integer value) {
            addCriterion("JOB_GUIDEID =", value, "jobGuideid");
            return (Criteria) this;
        }

        public Criteria andJobGuideidNotEqualTo(Integer value) {
            addCriterion("JOB_GUIDEID <>", value, "jobGuideid");
            return (Criteria) this;
        }

        public Criteria andJobGuideidGreaterThan(Integer value) {
            addCriterion("JOB_GUIDEID >", value, "jobGuideid");
            return (Criteria) this;
        }

        public Criteria andJobGuideidGreaterThanOrEqualTo(Integer value) {
            addCriterion("JOB_GUIDEID >=", value, "jobGuideid");
            return (Criteria) this;
        }

        public Criteria andJobGuideidLessThan(Integer value) {
            addCriterion("JOB_GUIDEID <", value, "jobGuideid");
            return (Criteria) this;
        }

        public Criteria andJobGuideidLessThanOrEqualTo(Integer value) {
            addCriterion("JOB_GUIDEID <=", value, "jobGuideid");
            return (Criteria) this;
        }

        public Criteria andJobGuideidIn(List<Integer> values) {
            addCriterion("JOB_GUIDEID in", values, "jobGuideid");
            return (Criteria) this;
        }

        public Criteria andJobGuideidNotIn(List<Integer> values) {
            addCriterion("JOB_GUIDEID not in", values, "jobGuideid");
            return (Criteria) this;
        }

        public Criteria andJobGuideidBetween(Integer value1, Integer value2) {
            addCriterion("JOB_GUIDEID between", value1, value2, "jobGuideid");
            return (Criteria) this;
        }

        public Criteria andJobGuideidNotBetween(Integer value1, Integer value2) {
            addCriterion("JOB_GUIDEID not between", value1, value2, "jobGuideid");
            return (Criteria) this;
        }

        public Criteria andCreateddateIsNull() {
            addCriterion("CreatedDate is null");
            return (Criteria) this;
        }

        public Criteria andCreateddateIsNotNull() {
            addCriterion("CreatedDate is not null");
            return (Criteria) this;
        }

        public Criteria andCreateddateEqualTo(Date value) {
            addCriterionForJDBCDate("CreatedDate =", value, "createddate");
            return (Criteria) this;
        }

        public Criteria andCreateddateNotEqualTo(Date value) {
            addCriterionForJDBCDate("CreatedDate <>", value, "createddate");
            return (Criteria) this;
        }

        public Criteria andCreateddateGreaterThan(Date value) {
            addCriterionForJDBCDate("CreatedDate >", value, "createddate");
            return (Criteria) this;
        }

        public Criteria andCreateddateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("CreatedDate >=", value, "createddate");
            return (Criteria) this;
        }

        public Criteria andCreateddateLessThan(Date value) {
            addCriterionForJDBCDate("CreatedDate <", value, "createddate");
            return (Criteria) this;
        }

        public Criteria andCreateddateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("CreatedDate <=", value, "createddate");
            return (Criteria) this;
        }

        public Criteria andCreateddateIn(List<Date> values) {
            addCriterionForJDBCDate("CreatedDate in", values, "createddate");
            return (Criteria) this;
        }

        public Criteria andCreateddateNotIn(List<Date> values) {
            addCriterionForJDBCDate("CreatedDate not in", values, "createddate");
            return (Criteria) this;
        }

        public Criteria andCreateddateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("CreatedDate between", value1, value2, "createddate");
            return (Criteria) this;
        }

        public Criteria andCreateddateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("CreatedDate not between", value1, value2, "createddate");
            return (Criteria) this;
        }

        public Criteria andEnddateIsNull() {
            addCriterion("EndDate is null");
            return (Criteria) this;
        }

        public Criteria andEnddateIsNotNull() {
            addCriterion("EndDate is not null");
            return (Criteria) this;
        }

        public Criteria andEnddateEqualTo(Date value) {
            addCriterionForJDBCDate("EndDate =", value, "enddate");
            return (Criteria) this;
        }

        public Criteria andEnddateNotEqualTo(Date value) {
            addCriterionForJDBCDate("EndDate <>", value, "enddate");
            return (Criteria) this;
        }

        public Criteria andEnddateGreaterThan(Date value) {
            addCriterionForJDBCDate("EndDate >", value, "enddate");
            return (Criteria) this;
        }

        public Criteria andEnddateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("EndDate >=", value, "enddate");
            return (Criteria) this;
        }

        public Criteria andEnddateLessThan(Date value) {
            addCriterionForJDBCDate("EndDate <", value, "enddate");
            return (Criteria) this;
        }

        public Criteria andEnddateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("EndDate <=", value, "enddate");
            return (Criteria) this;
        }

        public Criteria andEnddateIn(List<Date> values) {
            addCriterionForJDBCDate("EndDate in", values, "enddate");
            return (Criteria) this;
        }

        public Criteria andEnddateNotIn(List<Date> values) {
            addCriterionForJDBCDate("EndDate not in", values, "enddate");
            return (Criteria) this;
        }

        public Criteria andEnddateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("EndDate between", value1, value2, "enddate");
            return (Criteria) this;
        }

        public Criteria andEnddateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("EndDate not between", value1, value2, "enddate");
            return (Criteria) this;
        }

        public Criteria andStateidIsNull() {
            addCriterion("stateId is null");
            return (Criteria) this;
        }

        public Criteria andStateidIsNotNull() {
            addCriterion("stateId is not null");
            return (Criteria) this;
        }

        public Criteria andStateidEqualTo(Integer value) {
            addCriterion("stateId =", value, "stateid");
            return (Criteria) this;
        }

        public Criteria andStateidNotEqualTo(Integer value) {
            addCriterion("stateId <>", value, "stateid");
            return (Criteria) this;
        }

        public Criteria andStateidGreaterThan(Integer value) {
            addCriterion("stateId >", value, "stateid");
            return (Criteria) this;
        }

        public Criteria andStateidGreaterThanOrEqualTo(Integer value) {
            addCriterion("stateId >=", value, "stateid");
            return (Criteria) this;
        }

        public Criteria andStateidLessThan(Integer value) {
            addCriterion("stateId <", value, "stateid");
            return (Criteria) this;
        }

        public Criteria andStateidLessThanOrEqualTo(Integer value) {
            addCriterion("stateId <=", value, "stateid");
            return (Criteria) this;
        }

        public Criteria andStateidIn(List<Integer> values) {
            addCriterion("stateId in", values, "stateid");
            return (Criteria) this;
        }

        public Criteria andStateidNotIn(List<Integer> values) {
            addCriterion("stateId not in", values, "stateid");
            return (Criteria) this;
        }

        public Criteria andStateidBetween(Integer value1, Integer value2) {
            addCriterion("stateId between", value1, value2, "stateid");
            return (Criteria) this;
        }

        public Criteria andStateidNotBetween(Integer value1, Integer value2) {
            addCriterion("stateId not between", value1, value2, "stateid");
            return (Criteria) this;
        }

        public Criteria andCommentIsNull() {
            addCriterion("COMMENT is null");
            return (Criteria) this;
        }

        public Criteria andCommentIsNotNull() {
            addCriterion("COMMENT is not null");
            return (Criteria) this;
        }

        public Criteria andCommentEqualTo(String value) {
            addCriterion("COMMENT =", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentNotEqualTo(String value) {
            addCriterion("COMMENT <>", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentGreaterThan(String value) {
            addCriterion("COMMENT >", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentGreaterThanOrEqualTo(String value) {
            addCriterion("COMMENT >=", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentLessThan(String value) {
            addCriterion("COMMENT <", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentLessThanOrEqualTo(String value) {
            addCriterion("COMMENT <=", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentLike(String value) {
            addCriterion("COMMENT like", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentNotLike(String value) {
            addCriterion("COMMENT not like", value, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentIn(List<String> values) {
            addCriterion("COMMENT in", values, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentNotIn(List<String> values) {
            addCriterion("COMMENT not in", values, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentBetween(String value1, String value2) {
            addCriterion("COMMENT between", value1, value2, "comment");
            return (Criteria) this;
        }

        public Criteria andCommentNotBetween(String value1, String value2) {
            addCriterion("COMMENT not between", value1, value2, "comment");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}
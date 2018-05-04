package com.oracle.dao;

import com.oracle.vo.TbTeacher;
import com.oracle.vo.TbTeacherExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository
public interface TbTeacherMapper {
    long countByExample(TbTeacherExample example);

    int deleteByExample(TbTeacherExample example);

    int deleteByPrimaryKey(Integer teacherid);

    int insert(TbTeacher record);

    int insertSelective(TbTeacher record);

    List<TbTeacher> selectByExample(TbTeacherExample example);

    TbTeacher selectByPrimaryKey(Integer teacherid);

    int updateByExampleSelective(@Param("record") TbTeacher record, @Param("example") TbTeacherExample example);

    int updateByExample(@Param("record") TbTeacher record, @Param("example") TbTeacherExample example);

    int updateByPrimaryKeySelective(TbTeacher record);

    int updateByPrimaryKey(TbTeacher record);
}
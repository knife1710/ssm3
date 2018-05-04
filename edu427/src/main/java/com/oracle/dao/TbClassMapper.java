package com.oracle.dao;

import com.oracle.vo.TbClass;
import com.oracle.vo.TbClassExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TbClassMapper {
    long countByExample(TbClassExample example);

    int deleteByExample(TbClassExample example);

    int deleteByPrimaryKey(Integer classid);

    int insert(TbClass record);

    int insertSelective(TbClass record);

    List<TbClass> selectByExample(TbClassExample example);

    TbClass selectByPrimaryKey(Integer classid);

    int updateByExampleSelective(@Param("record") TbClass record, @Param("example") TbClassExample example);

    int updateByExample(@Param("record") TbClass record, @Param("example") TbClassExample example);

    int updateByPrimaryKeySelective(TbClass record);

    int updateByPrimaryKey(TbClass record);
    
    public List<Map<String,Object>> selectAll();
}
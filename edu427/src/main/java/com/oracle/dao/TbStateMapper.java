package com.oracle.dao;

import com.oracle.vo.TbState;
import com.oracle.vo.TbStateExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository
public interface TbStateMapper {
    long countByExample(TbStateExample example);

    int deleteByExample(TbStateExample example);

    int deleteByPrimaryKey(Integer stateid);

    int insert(TbState record);

    int insertSelective(TbState record);

    List<TbState> selectByExample(TbStateExample example);

    TbState selectByPrimaryKey(Integer stateid);

    int updateByExampleSelective(@Param("record") TbState record, @Param("example") TbStateExample example);

    int updateByExample(@Param("record") TbState record, @Param("example") TbStateExample example);

    int updateByPrimaryKeySelective(TbState record);

    int updateByPrimaryKey(TbState record);
}
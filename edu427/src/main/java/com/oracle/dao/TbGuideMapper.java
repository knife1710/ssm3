package com.oracle.dao;

import com.oracle.vo.TbGuide;
import com.oracle.vo.TbGuideExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TbGuideMapper {
    long countByExample(TbGuideExample example);

    int deleteByExample(TbGuideExample example);

    int deleteByPrimaryKey(Integer guideid);

    int insert(TbGuide record);

    int insertSelective(TbGuide record);

    List<TbGuide> selectByExample(TbGuideExample example);

    TbGuide selectByPrimaryKey(Integer guideid);

    int updateByExampleSelective(@Param("record") TbGuide record, @Param("example") TbGuideExample example);

    int updateByExample(@Param("record") TbGuide record, @Param("example") TbGuideExample example);

    int updateByPrimaryKeySelective(TbGuide record);

    int updateByPrimaryKey(TbGuide record);
}
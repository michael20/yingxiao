package com.yxdata.dao;

import com.yxdata.domain.CostRecord;

public interface CostRecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CostRecord record);

    int insertSelective(CostRecord record);

    CostRecord selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CostRecord record);

    int updateByPrimaryKey(CostRecord record);
}
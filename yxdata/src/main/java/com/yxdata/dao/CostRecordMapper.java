package com.yxdata.dao;

import java.util.List;

import com.yxdata.domain.CostRecord;
import com.yxdata.domain.User;

public interface CostRecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CostRecord record);

    int insertSelective(CostRecord record);

    CostRecord selectByPrimaryKey(Integer id);
    
    List<CostRecord> selectByCostRecord(CostRecord record);
    
    int updateByPrimaryKeySelective(CostRecord record);

    int updateByPrimaryKey(CostRecord record);
    
    
    
}
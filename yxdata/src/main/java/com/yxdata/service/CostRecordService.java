package com.yxdata.service;

import java.util.List;

import com.yxdata.domain.CostRecord;
import com.yxdata.domain.User;

//
public interface CostRecordService {

	int deleteByPrimaryKey(Integer id);

    int insert(CostRecord record);

    int insertSelective(CostRecord record);

    CostRecord selectByPrimaryKey(Integer id);
    
    List<CostRecord> selectByCostRecord(CostRecord record);

    int updateByPrimaryKeySelective(CostRecord record);

    int updateByPrimaryKey(CostRecord record);
}

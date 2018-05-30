package com.yxdata.service;

import com.yxdata.domain.CostRecord;

//
public interface CostRecordService {

	int deleteByPrimaryKey(Integer id);

    int insert(CostRecord record);

    int insertSelective(CostRecord record);

    CostRecord selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CostRecord record);

    int updateByPrimaryKey(CostRecord record);
}

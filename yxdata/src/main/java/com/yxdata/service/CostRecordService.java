package com.yxdata.service;

import java.util.List;

import com.yxdata.domain.CostRecord;
import com.yxdata.domain.User;
import com.yxdata.vo.CostRecordVo;

//
public interface CostRecordService {

	int deleteByPrimaryKey(Integer id);

    int insert(CostRecord record);

    int insertSelective(CostRecord record);

    CostRecord selectByPrimaryKey(Integer id);
    
    List<CostRecordVo> selectByCostRecord(CostRecordVo costRecordVo);

    int updateByPrimaryKeySelective(CostRecord record);

    int updateByPrimaryKey(CostRecord record);
}

package com.yxdata.dao;

import java.util.List;

import com.yxdata.domain.CostRecord;
import com.yxdata.domain.User;
import com.yxdata.vo.CostRecordVo;

public interface CostRecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CostRecord record);

    int insertSelective(CostRecord record);

    CostRecord selectByPrimaryKey(Integer id);
    
    List<CostRecordVo> selectByCostRecord(CostRecordVo costRecordVo);
    
    int updateByPrimaryKeySelective(CostRecord record);

    int updateByPrimaryKey(CostRecord record);
    
    
    
}
package com.yxdata.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yxdata.dao.CostRecordMapper;
import com.yxdata.domain.CostRecord;
import com.yxdata.service.CostRecordService;

@Service
public class CostRecordServiceImpl implements CostRecordService {

	@Autowired
	private CostRecordMapper costRecordMapper;
	
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		
		return costRecordMapper.deleteByPrimaryKey(id);
//		return 0;  //
	}

	@Override
	public int insert(CostRecord record) {
		// TODO Auto-generated method stub
		return costRecordMapper.insert(record);
//		return 0;   
	}

	@Override
	public int insertSelective(CostRecord record) {
		// TODO Auto-generated method stub
		return costRecordMapper.insertSelective(record);
//		return 0;
	}

	@Override
	public CostRecord selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return costRecordMapper.selectByPrimaryKey(id);
//		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(CostRecord record) {
		// TODO Auto-generated method stub
		return costRecordMapper.updateByPrimaryKeySelective(record);
//		return 0;
	}

	@Override
	public int updateByPrimaryKey(CostRecord record) {
		// TODO Auto-generated method stub
		return costRecordMapper.updateByPrimaryKey(record);
//		return 0;
	}

}

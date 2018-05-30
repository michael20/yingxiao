package com.yxdata.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yxdata.domain.CostRecord;
import com.yxdata.service.impl.CostRecordServiceImpl;

@Controller
@RequestMapping("/costRecord")
public class CostRecordController {

	@Autowired
	private CostRecordServiceImpl costRecordServiceImpl;
	
	@ResponseBody
	@RequestMapping("/delete")
	public String deleteByPrimaryKey()
	{
		costRecordServiceImpl.deleteByPrimaryKey(1);
		return "delete success";
	}
	
	@ResponseBody
	@RequestMapping("/insert")
	public String insertSelective(CostRecord record)
	{
		costRecordServiceImpl.insertSelective(record);
		return "insertSelective success";
	}
	
	@ResponseBody
	@RequestMapping("/select")
	public String selectByPrimaryKey(Integer id)
	{
		
		return costRecordServiceImpl.selectByPrimaryKey(id).toString();
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public String updateByPrimaryKeySelective(CostRecord record)
	{
		costRecordServiceImpl.updateByPrimaryKeySelective(record);
		return "update success";
	}
	
	
	
}

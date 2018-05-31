package com.yxdata.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.yxdata.domain.CostRecord;
import com.yxdata.domain.User;
import com.yxdata.service.impl.CostRecordServiceImpl;
import com.yxdata.vo.CostRecordVo;

@Controller
@RequestMapping("/costRecord")
public class CostRecordController {

	@Autowired
	private CostRecordServiceImpl costRecordServiceImpl;
	
	
	@RequestMapping
	public String showList()
	{
		return "costRecord/list";
	}
	
	
	@ResponseBody
	@RequestMapping("/delete")
	public String deleteByPrimaryKey(Integer id)
	{
		costRecordServiceImpl.deleteByPrimaryKey(id);
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
	
	@ResponseBody()
	@RequestMapping("/select2")
	public String selectByCostRecord(CostRecordVo costRecordVo,HttpServletResponse resp)
	{
		JSONObject json=new JSONObject();
		json.put("data", costRecordServiceImpl.selectByCostRecord(costRecordVo));
		System.out.println("jsonstring:"+json.toJSONString());
		resp.setContentType("application/json;charset=utf-8");
		return json.toJSONString();
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public String updateByPrimaryKeySelective(CostRecord record)
	{
		System.out.println("update:"+record.toString());
		costRecordServiceImpl.updateByPrimaryKeySelective(record);
		return "update success";
	}
	
	
	
}

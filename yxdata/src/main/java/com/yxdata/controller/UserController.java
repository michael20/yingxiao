package com.yxdata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.yxdata.domain.User;
import com.yxdata.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userServiceImpl;
	
	@RequestMapping
	public String page() {
		return "userinfo/list";
	}
	
	@RequestMapping("/insert")
	@ResponseBody
	public String insert(User user) {
		userServiceImpl.insert(user);
		return "sucess";
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public String delete(Integer id) {
		userServiceImpl.deleteByPrimaryKey(id);
		return "delete sucess";
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public String updateByPrimaryKeySelective(User user) {
		userServiceImpl.updateByPrimaryKey(user);
		return  "update sucess";
	}
	
	@RequestMapping("/select")
	@ResponseBody
	public String selectByPrimaryKey(Integer id) {
		return userServiceImpl.selectByPrimaryKey(id).toString();
	}
	
	@RequestMapping("/selectAll")
	@ResponseBody
	public String selectAll(User user) {
		JSONObject json = new JSONObject();
		List list = userServiceImpl.selectAll(user);
		json.put("data", list);		
		return json.toJSONString();
	}
	
}

package com.yxdata.controller;

import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yxdata.domain.User;
import com.yxdata.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userServiceImpl;
	
	@RequestMapping("/insert")
	@ResponseBody
	public String insert(User user) {
		userServiceImpl.insert(user);
		return "sucess";
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public String delete(int id) {
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
	
}

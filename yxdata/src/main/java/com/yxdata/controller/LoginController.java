/**
 *
 */
package com.yxdata.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.yxdata.common.ResultMap;

/**
 * @author Administrator
 * @date 2018年5月30日 下午3:10:17
 * 
 */
@Controller
public class LoginController {
	
	
	@RequestMapping("/login")
	public String login(HttpServletRequest req, HttpServletResponse resp) {
		String name = req.getParameter("name");
		name = name!=null?name:"";
		String password = req.getParameter("password");
		password = password!=null?password:"";
		if("admin".equals(name) && "admin".equals(password)) {
			HttpSession session = req.getSession();
			session.setAttribute("name", name);
//			登录成功
			return "index";
			
		}
		req.setAttribute("error", "用户名或密码错误！请重试！");
		return "redirect:/login.jsp";
	}
	
}

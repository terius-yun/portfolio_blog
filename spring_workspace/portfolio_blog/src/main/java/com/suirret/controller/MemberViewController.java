package com.suirret.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberViewController {
	private String form = "home.jsp?contentPage=member/";
	@RequestMapping(value={"LoginForm","signUpForm"})
	public String memberViewChange(HttpServletRequest request) {
		String path = request.getServletPath();
		return form+path;
	}
}

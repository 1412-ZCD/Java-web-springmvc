package com.controller;

import java.util.Date;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.po.User;


@EnableWebMvc
@Controller
@RequestMapping(value="/user")

@SessionAttributes(names={"regDate","user"})

public class UserController{
	@PostMapping(value="/reg")

	public String reg(User user,Model model){

		Date loginDate=new Date();
		model.addAttribute("user",user);
	
		model.addAttribute("regDate",loginDate);
		return "forward:toLogin";
	}

	@RequestMapping(value="/toLogin")
	public String toLogin(){
		return "login";
	}
	@RequestMapping(value="/login")

	public ModelAndView login (String loginname, String password,
	@SessionAttribute("user") User user,ModelAndView mv ){
		String msg;
	
		if(loginname!=null&&loginname.equals(user.getUsername())
				&&password!=null&&password.equals(user.getPassword()))msg="µÇÂ¼³É¹¦";
		else
			msg="µÇÂ¼Ê§°Ü";
		mv.addObject("msg",msg);
	
		mv.setViewName("result");
		return mv;
	
	}
}


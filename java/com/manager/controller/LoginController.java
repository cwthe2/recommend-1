package com.manager.controller;

//test11

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.manager.bean.User;
import com.manager.service.UserService;
import com.manager.untils.Md5Utils;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private UserService userservice;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {

		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(HttpSession httpsession, HttpServletRequest request, User u) {
		ModelAndView mav = null;
		User user = this.userservice.findbyname(u.getUsername());
		if (user == null) {
			mav = new ModelAndView("login");
		} else {
			if (user.getPassword().equals(Md5Utils.md5(u.getPassword()))) {
				httpsession.setAttribute("username", u.getUsername());
				httpsession.setAttribute("userid", u.getId());
				mav = new ModelAndView("redirect:/recommend/index");
			}
		}
		return mav;
	}

}

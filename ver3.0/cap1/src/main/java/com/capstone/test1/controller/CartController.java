package com.capstone.test1.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.capstone.test1.service.CartService;

@Controller
@RequestMapping("cart/*")
public class CartController {

	@Autowired
	CartService cartService;
	
	@RequestMapping(value="/cart/getCart.do", method=RequestMethod.POST)
	public @ResponseBody ModelAndView getCart(HttpServletRequest httpServletRqeust) {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
}

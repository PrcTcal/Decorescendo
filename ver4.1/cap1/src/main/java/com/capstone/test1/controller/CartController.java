package com.capstone.test1.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.capstone.test1.service.CartService;
import com.capstone.test1.logic.Cart;

@Controller
public class CartController {

	@Autowired
	CartService cartService;
	
	   @RequestMapping(value="/cart/insert.do",method = RequestMethod.POST)
	   public @ResponseBody int insertBasket(HttpSession session, HttpServletRequest httpServletRequest) {
	      int insertCheck = 0;
	      System.out.println(httpServletRequest.getParameter("insertFurn"));
	      try{
	         insertCheck = cartService.insertBasket(httpServletRequest.getParameter("insertID"),httpServletRequest.getParameter("insertFurn"));
	      }catch(Exception e) {
	         insertCheck = 0;
	      }
	      return insertCheck;
	   }
	   

	   @RequestMapping(value="/cart/delete.do",method = RequestMethod.POST)
	   public @ResponseBody int deleteBasket(HttpSession session, HttpServletRequest httpServletRequest) {
	      int deleteCheck = cartService.deleteBasket(httpServletRequest.getParameter("deleteID"),httpServletRequest.getParameter("deleteFurn"));
	      return deleteCheck;
	   }

	   @RequestMapping(value="/cart/basket.do",method = RequestMethod.POST)
		public @ResponseBody List<Cart> basket(HttpSession session, HttpServletRequest httpServletRequest) {
			List<Cart> basketCheck = cartService.getBasketList(httpServletRequest.getParameter("reloadID"));
			return basketCheck;
		}
		

		@RequestMapping(value="/cart/count.do",method = RequestMethod.POST)
		public @ResponseBody int countBasket(HttpSession session, HttpServletRequest httpServletRequest) {
			int countCheck = cartService.countBasket(httpServletRequest.getParameter("changeID"),httpServletRequest.getParameter("changeNum"),httpServletRequest.getParameter("count"));
			return countCheck;
		}

}

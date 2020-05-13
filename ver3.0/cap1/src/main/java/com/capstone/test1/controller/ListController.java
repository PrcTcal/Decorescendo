package com.capstone.test1.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.capstone.test1.logic.Lists;
import com.capstone.test1.service.ListService;

@Controller
@RequestMapping("list/*")
public class ListController {
	
	@Autowired
	ListService listService;
	
	@RequestMapping(value="/list/search.do", method=RequestMethod.POST)
	public @ResponseBody List<Lists> search(HttpServletRequest httpServletRequest){
		List<Lists> list;
		String type = httpServletRequest.getParameter("Type");
		String brand = httpServletRequest.getParameter("Brand");
		String price = httpServletRequest.getParameter("Price");

		List<Lists> result = listService.getListOne(type, brand, price);
		for(int i = 0 ; i < result.size(); i++) {
			System.out.println(result.get(i).toString());
		}	
		return result;
	}


}

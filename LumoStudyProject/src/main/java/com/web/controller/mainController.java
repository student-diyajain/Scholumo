package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class mainController {
	
   @RequestMapping({"/","/home"})
   public String home() {
	   return "home";
   }
   
   @RequestMapping("/login")
   public String loginPage() {
	   return "loginPage";
   }
   
   
   @RequestMapping(path="/sendCode",method=RequestMethod.POST)
   @ResponseBody
   public String emailCome(@RequestParam("email") String email) {
	   return "<h1>LoginPage to "+email+"</h1>";
   }
   
   @RequestMapping("/confirmOrder")
   public String confirmorder(HttpServletRequest request,Model model) {
	 String phone=request.getParameter("phone");
	 model.addAttribute("phoneno",phone);
	 System.out.println(phone);
	   return "confirm";
   }
   
}

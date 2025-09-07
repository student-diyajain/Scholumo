package com.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import com.web.services.CartService;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class cartController {

	    private final CartService cartService;
	    public cartController( CartService cartService) {
	        this.cartService=cartService;
	     }
	    @RequestMapping("/directCart")
	     public String directCart(Model model) {
	    	model.addAttribute("cartItems",cartService.getAllCartItems());
			return "cart";
	    	 
	     }
	    @RequestMapping("/deleteCart/{id}")
	     public String deleteCart(@PathVariable("id") int cartid,HttpServletRequest request) {
	    	System.out.println(cartid);
	    	cartService.deleteCart(cartid);
	    	System.out.println("deleted!");
	    	
			return "redirect:/directCart";
	   }
	    @RequestMapping("/checkout")
	     public String checkout(Model model) {
	    	model.addAttribute("cartItems",cartService.getAllCartItems());
			return "Checkout";
	    	 
	     }

}

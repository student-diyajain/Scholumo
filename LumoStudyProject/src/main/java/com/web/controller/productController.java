package com.web.controller;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.entities.CartItem;
import com.web.entities.Product;
import com.web.services.CartService;
import com.web.services.ProductService;
import jakarta.servlet.http.HttpServletRequest;




@Controller
public class productController {

    private final ProductService productService;
	private final CartService cartService;
    public productController(ProductService productService, CartService cartService) {
        this.productService = productService;
        this.cartService=cartService;
     }
    
   
    @RequestMapping("/productPage")
    public String viewProducts(Model model) {
    	  System.out.println("product controller works");
          model.addAttribute("products", productService.getAllProducts());
          return "Product";
    }

    
     @RequestMapping(path="/SubmitOrder",method=RequestMethod.POST)
     public String addToCart(
    		 @RequestParam("grade") String grade, 
    		 @RequestParam("subject") String subject,
    		 @RequestParam("quantity") int quantity, HttpServletRequest request,Model model) {
    	     
             Product product=productService.getProduct(grade, subject);
             
    	     
      String action = request.getParameter("action");
  	  if ("add_to_cart".equals(action)) {
  		  System.out.println("buy now");
	         // check if product already exists in cart
	        Optional<CartItem> existingCartItem = cartService.getCart(product);
	      

	        if (existingCartItem.isPresent()) {
	        	System.out.println("already present");
	            CartItem cart = existingCartItem.get();
	            cart.setQuantity(cart.getQuantity() + quantity);
	            cart.setTotalPrice(cart.getQuantity() * product.getPrice());
	            cartService.saveCartItem(cart);
	        } else {
	        	System.out.println("not present");
	            CartItem newCart = new CartItem();
	            newCart.setProduct(product);
	            newCart.setQuantity(quantity);
	            newCart.setTotalPrice(quantity * product.getPrice());
	            cartService.saveCartItem(newCart);
	        }
  		       model.addAttribute("cartItems",cartService.getAllCartItems());
  	           return "cart";
  	  } 
  	  else if ("buy_now".equals(action)) {
  	    System.out.println("buy now");
  	             CartItem buyCart = new CartItem();
                     buyCart.setProduct(product);
                     buyCart.setQuantity(quantity);
                     buyCart.setTotalPrice(quantity * product.getPrice());
                     model.addAttribute("item",buyCart);
  	    
  	            return "directBuy";
  	  }   	
        return "redirect:SubmitOrder";
	    }
}           

            		 
    	     

    	       
              
    	     
    	     
    	     
    	     
    	     
    	    

	
	


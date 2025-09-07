package com.web.services;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.web.dao.CartItemRepository;
import com.web.entities.CartItem;
import com.web.entities.Product;


@Service
public class CartService {
	    private final CartItemRepository repo;

	    public CartService(CartItemRepository repo) {
	        this.repo = repo;
	    }
  
	    
	    public Iterable<CartItem> getAllCartItems() {
	        return repo.findAll();
	    }  
	    
	    public void saveCartItem(CartItem cart) {
	    	repo.save(cart);
	    }
	    
	    
	    public Optional<CartItem> getCart(Product product) {
	        return repo.findByProduct(product);
	    }
	    
	    
	    
	    public void deleteCart(int id) {
	    	   repo.deleteById(id);
	    }
}
	


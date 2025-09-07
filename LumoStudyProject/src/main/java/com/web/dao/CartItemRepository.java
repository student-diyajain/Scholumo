package com.web.dao;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import com.web.entities.CartItem;
import com.web.entities.Product;


public interface CartItemRepository extends CrudRepository<CartItem, Integer> {
	Optional<CartItem> findByProduct(Product product);
}

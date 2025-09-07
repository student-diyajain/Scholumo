package com.web.dao;



import org.springframework.data.repository.CrudRepository;

import com.web.entities.Product;

public interface ProductRepository extends CrudRepository<Product, Integer> {
	// in ProductRepository
	Product findByGradeAndSubject(String grade, String subject);
}

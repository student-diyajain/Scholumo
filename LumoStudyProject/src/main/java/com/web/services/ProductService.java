package com.web.services;


import org.springframework.stereotype.Service;
import com.web.dao.ProductRepository;
import com.web.entities.Product;

@Service
public class ProductService {
    private final ProductRepository repo;

    public ProductService(ProductRepository repo) {
        this.repo = repo;
    }

    public Iterable<Product> getAllProducts() {
        return repo.findAll();
    }
    

    public Product getProduct(String grade,String subject) {
        return repo.findByGradeAndSubject(grade, subject);
    }

    

}


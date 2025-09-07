package com.web.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;


@Entity
public class CartItem {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
private int cartId;
@ManyToOne
@JoinColumn(name = "product_id")
private Product product;
private int quantity;
private double totalPrice;


public int getCartId() {
	return cartId;
}
public void setCartId(int cartId) {
	this.cartId = cartId;
}
public Product getProduct() {
	return product;
}
public void setProduct(Product product) {
	this.product = product;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getTotalPrice() {
	return totalPrice;
}
public void setTotalPrice(double totalPrice) {
	this.totalPrice = totalPrice;
}
@Override
public String toString() {
	return "CartItem [cartId=" + cartId + ", product=" + product + ", quantity=" + quantity + ", totalPrice="
			+ totalPrice + "]";
}




	
}
  


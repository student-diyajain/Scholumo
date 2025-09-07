

---

# 📚 Scholumo Website Project

**Developed by:** *Diya Jain*  
**Front-End:** Bootstrap  
**Back-End:** Spring Boot  

---

## 📌 Project Overview

**Scholumo** is a dynamic e-learning and product-based web application designed to deliver:

- 🧠 Interactive and user-friendly features for online learning and shopping  
- 🎨 Responsive UI powered by **Bootstrap**  
- ⚙️ Scalable and efficient backend built with **Spring Boot**

---

## 🛠️ Software Requirements

| Technology       | Purpose                                                  |
|------------------|-----------------------------------------------------------|
| **Java (Spring Boot)** | Build production-ready standalone web applications     |
| **Hibernate (JPA)**    | ORM and database persistence                          |
| **MySQL**              | Relational database for structured entity storage     |
| **Maven**              | Dependency management and project automation          |

---

## ✨ Key Functionalities

### 🛒 Product Management
- Add products to cart  
- View detailed product information (pricing, specifications, availability)  
- Delete products from cart if not required  

### 📦 Checkout & Orders
- Auto-calculated pricing with applied charges  
- Secure "Place Order" functionality  

---
## 📌 ER Diagram

Here is the Entity–Relationship diagram of the project:

![ER Diagram](docs/er-diagram.png)


---

## 🧱 Project Architecture

```
Frontend (JSP)         → Renders dynamic web content  
Controller Layer       → Handles HTTP requests and responses  
Service Layer          → Implements business logic (e.g., duplicate cart handling)  
Repository Layer       → Performs CRUD operations using JPA/Hibernate  
Database (MySQL)       → Stores and manages structured data  
```

---

## 🌱 Why Spring Boot?

- Simplified configuration and dependency management  
- Seamless integration with Hibernate & MySQL  
- Built-in support for REST APIs, MVC, and security  
- Rapid development using embedded servers  

---

## 🚀 Problems Addressed by Scholumo

- **Duplicate Prevention Logic**  
  Ensures cart does not contain duplicate items before insertion  

- **Strong Entity Relationships**  
  Implemented using `@ManyToOne` and `@JoinColumn` annotations  

- **Auto-Calculated Pricing**  
  Dynamically updates based on quantity and unit cost  

---

## ✅ Conclusion

The **Scholumo LMS** project is a forward-thinking educational platform that combines:

- Efficient backend development with **Spring Boot** & **Hibernate**  
- Seamless database integration with **MySQL**  
- Robust architecture for scalability and maintainability  

---

## 🙏 Acknowledgment

Thank you for exploring **Scholumo**!  
Feel free to contribute, suggest improvements, or reach out for collaboration.

---



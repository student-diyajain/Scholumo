<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Your Cart</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <style>
        .cart-item img {
            width: 120px;
        }

        .quantity-controls {
            display: flex;
            align-items: center;
        }

        .quantity-controls button {
            width: 32px;
            height: 32px;
        }

        .cart-total {
            font-weight: bold;
        }

        td.align-top {
            vertical-align: top;
        }

        .product-details {
            display: flex;
            gap: 15px;
        }
        
    </style>
</head>
<body class="p-5">
<div class="container">
    <h2 class="mb-4">Your cart</h2>
    <div class="text-end mb-4">
        <a href="productPage" class="btn btn-link">Continue shopping</a>
    </div>

    <table class="table align-middle">
        <thead>
        <tr>
            <th>Product</th>
            <th>Quantity</th>
            <th>Total</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="item" items="${cartItems}">
            
            <tr class="cart-item">
                <td class="align-top">
                    <div class="product-details">
                        <img src="/images/${item.product.subject}.png" alt="${item.product.subject}"/>
                        <div>
                            <strong>Order Lumo</strong><br/>
                            Rs. ${item.product.price}<br/>
                            Grade: ${item.product.grade}<br/>
                            Subject: ${item.product.subject}
                        </div>
                    </div>
                </td>

                <td>
                    <div class="quantity-controls">
                        <span class="mx-2">${item.quantity}</span>
                        <a href="deleteCart/${item.cartId}" class="text-danger ms-3">🗑️</a>
                    </div>
                </td>

                <td class="cart-total">
                    Rs. <c:out value="${item.product.price * item.quantity}" />
                 
                </td>
            </tr>
        </c:forEach>
        
        </tbody>

        
    </table>
       <!-- Estimated Total Section -->
    <c:set var="estimatedTotal" value="0" />
    <c:forEach var="item" items="${cartItems}">
      <c:set var="estimatedTotal"
             value="${estimatedTotal + (item.product.price * item.quantity)}" />
    </c:forEach>

    <div class="text-end mt-4">
      <div class="cart-total fs-5">
        **Estimated total: Rs. <c:out value="${estimatedTotal}" />**
      </div>
      <div class="small text-muted mb-2">
        Taxes, discounts and shipping calculated at checkout.
      </div>
      <a href="checkout" class="btn btn-dark btn-lg">Check out</a>
    </div>
</div>

<script>
   
</script>
</body>
</html>

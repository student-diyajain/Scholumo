<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
  <title>Checkout</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
  <style>
    .summary-card {
      border: 1px solid #ddd;
      padding: 20px;
      border-radius: 8px;
      background: #fafafa;
    }
  </style>
</head>
<body class="p-5">
  <div class="container">
    <div class="row">
      <!-- Left: Contact, Delivery, Payment -->
      <div class="col-md-7 mb-4">
        <h4>Contact</h4>
        <form action="confirmOrder" method="post">
          <div class="mb-3">
            <input type="email" name="email" class="form-control" placeholder="Enter Email" required>
            <div class="form-text text-end"><a href="login">Log in</a></div>
          </div>

          <h4>Delivery</h4>
          <select name="country" class="form-select mb-2">
            <option selected>India</option>
          </select>
          
          <div class="row g-2 mb-2">
            <div class="col">
              <input type="text" name="firstName" class="form-control" placeholder="First name" required>
            </div>
            <div class="col">
              <input type="text" name="lastName" class="form-control" placeholder="Last name" required>
            </div>
          </div>
          <div class="mb-2">
            <input type="text" name="address" class="form-control" placeholder="Enter Complete Address" required>
          </div>
          <div class="row g-2 mb-2">
            <div class="col-6">
              <input type="text" name="city" class="form-control" placeholder="City" required>
            </div>
            <div class="col-4">
              <select name="state" class="form-select">
                <option selected>Delhi</option>
              </select>
            </div>
            <div class="col-2">
              <input type="text" name="pin" class="form-control" placeholder="PIN code" required>
            </div>
          </div>
          <div class="mb-3">
            <input type="text" name="phone" class="form-control" placeholder="Enter Phone Number (used for delivery)" required>
          </div>
          <div class="form-check mb-3">
            <input class="form-check-input" type="checkbox" id="saveInfo" name="saveInfo">
            <label class="form-check-label" for="saveInfo">Save this information for next time</label>
          </div>

          <h4>Payment</h4>
          <div class="mb-3 p-3 border rounded">
            <strong>Razorpay Secure (UPI, Cards, Wallets, NetBanking)</strong>
            <div class="mt-2">
              <span class="me-2">UPI</span>
              <span class="me-2">Visa</span>
              <span class="me-2">Mastercard</span>
              <span>+4</span>
            </div>
            <div class="mt-2 text-muted small">
              After clicking (Pay now), you will be redirected to Razorpay to complete your purchase securely.
            </div>
          </div>

          <h4>Billing address</h4>
          <div class="mb-3 p-3 border rounded">
            <div class="form-check mb-2">
              <input class="form-check-input" type="radio" name="billingOption" id="sameAddress" value="same" checked>
              <label class="form-check-label" for="sameAddress">Same as shipping address</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="billingOption" id="differentAddress" value="different">
              <label class="form-check-label" for="differentAddress">Use a different billing address</label>
            </div>
          </div>

          <button type="submit" class="btn btn-primary w-100 btn-lg">Pay now</button>
        </form>
      </div>

      <!-- Right: Order Summary -->
      <div class="col-md-5">
        <div class="summary-card">
          <h5>Your Order</h5>
          <hr>
          <c:set var="subtotal" value="0" />
          <c:forEach var="item" items="${cartItems}">
            <div class="d-flex mb-3">
              <img src="/images/${item.product.subject}.png" width="60" class="me-2"/>
              <div>
                <div><strong>Order Lumo</strong></div>
                <div class="text-muted small">Grade ${item.product.grade} / ${item.product.subject}</div>
                <div>&#x20B9; ${item.product.price * item.quantity}</div>
              </div>
            </div>
            <c:set var="subtotal" value="${subtotal + (item.product.price * item.quantity)}" />
          </c:forEach>
          <hr>
          <div class="d-flex justify-content-between">
            <span><strong>Subtotal</strong></span>
            <span>&#x20B9;${subtotal}</span>
          </div>
          <div class="d-flex justify-content-between">
            <span>Shipping</span>
            <span class="text-muted">Enter shipping address</span>
          </div>
          <hr>
          <div class="d-flex justify-content-between fs-5">
            <span><strong>Total</strong></span>
            <span><strong>INR &#x20B9; ${subtotal}</strong></span>
            <input type="text"  name="amount" value="${subtotal}" hidden>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>

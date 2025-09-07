<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Lumo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #f0f4f7, #d9e4f5);
            font-family: 'Segoe UI', sans-serif;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        .product-title {
            font-size: 2rem;
            font-weight: 700;
            margin-bottom: 25px;
            text-align: center;
            color: #333;
        }

        .btn-pill {
            border-radius: 50px;
            padding: 6px 20px;
            margin: 5px 5px 5px 0;
            font-weight: 500;
        }

        .btn-selected {
            background-color: #212529;
            color: white;
        }

        .quantity-input {
            width: 60px;
            text-align: center;
            font-size: 18px;
        }

        .quantity-btn {
            width: 40px;
            height: 40px;
        }

        .buy-section button {
            width: 160px;
        }

        .check-cart-btn {
            background-color: #0d6efd;
            color: white;
            font-weight: 500;
            border-radius: 30px;
            padding: 10px 30px;
            transition: background-color 0.3s ease;
        }

        .check-cart-btn:hover {
            background-color: #084298;
        }

        .form-label {
            font-weight: 600;
        }
    </style>
</head>
<body class="p-5">

<div class="container">
    <div class="card mx-auto" style="max-width: 700px;">
        <form action="SubmitOrder" method="post">
    <div class="position-relative mb-4 text-center">
    <a href="home" class="btn btn-outline-secondary position-absolute end-0 top-0">Back</a>
    <div class="product-title">🛒 Order Lumo</div>
</div>

            <!-- Grade Selection -->
            <div class="mb-4">
                <label class="form-label">Grade:</label><br>
                <input type="radio" class="btn-check" name="grade" id="grade10" value="Grade 10" required>
                <label class="btn btn-outline-dark btn-pill" for="grade10">Grade 10</label>

                <input type="radio" class="btn-check" name="grade" id="grade9" value="Grade 9" required>
                <label class="btn btn-outline-dark btn-pill" for="grade9">Grade 9</label>
            </div>

            <!-- Subject Selection -->
            <div class="mb-4">
                <label class="form-label">Subject:</label><br>
                <input type="radio" class="btn-check" name="subject" id="bundle" value="Bundle" required>
                <label class="btn btn-outline-dark btn-pill" for="bundle">Bundle</label>

                <input type="radio" class="btn-check" name="subject" id="english" value="English"required>
                <label class="btn btn-outline-dark btn-pill" for="english">English</label>

                <input type="radio" class="btn-check" name="subject" id="social" value="Social Science" required>
                <label class="btn btn-outline-dark btn-pill" for="social">Social Science</label>

                <input type="radio" class="btn-check" name="subject" id="science" value="Science" required>
                <label class="btn btn-outline-dark btn-pill" for="science">Science</label>

                <input type="radio" class="btn-check" name="subject" id="maths" value="Maths" required>
                <label class="btn btn-outline-dark btn-pill" for="maths">Maths</label>
            </div>

            <!-- Quantity Selector -->
            <div class="mb-4">
                <label class="form-label">Quantity:</label>
                <div class="d-flex align-items-center">
                    <button type="button" class="btn btn-outline-dark quantity-btn" onclick="decreaseQty()">−</button>
                    <input type="text" id="qty" name="quantity" class="form-control mx-2 quantity-input" value="1" readonly>
                    <button type="button" class="btn btn-outline-dark quantity-btn" onclick="increaseQty()">+</button>
                </div>
            </div>

            <!-- Action Buttons -->
            <div class="buy-section text-center mt-4">
                <button type="submit" class="btn btn-outline-dark me-3" name="action" value="add_to_cart">Add to Cart</button>
                <button type="submit" class="btn btn-dark" name="action" value="buy_now">Buy Now</button>
            </div>
        </form>

        <!-- Check Cart Button -->
        <div class="text-center mt-4">
            <a href="/directCart" class="check-cart-btn btn">🛍️ Check Cart</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
    function increaseQty() {
        var qty = document.getElementById("qty");
        qty.value = parseInt(qty.value) + 1;
    }

    function decreaseQty() {
        var qty = document.getElementById("qty");
        if (parseInt(qty.value) > 1)
            qty.value = parseInt(qty.value) - 1;
    }
</script>

</body>
</html>

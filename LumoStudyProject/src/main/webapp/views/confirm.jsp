<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lumo | Payment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f2f5ff;
        }
        .payment-box {
            max-width: 950px;
            margin: 50px auto;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            background: #fff;
            display: flex;
        }
        .left-panel {
            background: #2b6edc;
            color: #fff;
            width: 35%;
            padding: 25px;
        }
        .left-panel h4 {
            margin-bottom: 20px;
        }
        .price-summary {
            background: #fff;
            color: #000;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
        }
        .right-panel {
            width: 65%;
            padding: 25px;
        }
        .offer-box {
            background: #f9f9f9;
            border-radius: 8px;
            padding: 10px;
            margin-bottom: 15px;
            font-size: 14px;
        }
        .qr-box {
            border: 1px solid #eee;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            margin-top: 15px;
        }
        .qr-box img {
            width: 150px;
        }
    </style>
</head>
<body>
<div class="payment-box">
    <!-- Left Panel -->
    <div class="left-panel">
        <h4>Lumo</h4>
<!--         <div class="price-summary"> -->
<!--             <strong>Price Summary</strong> -->
<!--             <div class="fs-4 mt-2">&#x20B9;2,586</div> -->
<!--         </div> -->
        <div class="mb-3 p-2 bg-light text-dark rounded">
            Using as <strong>${phoneno}</strong>
        </div>
        <div class="p-2 bg-light text-dark rounded">
            Offers on UPI, Amazon Pay, Cards
        </div>
        <div class="mt-5 small">Secured by <strong>Razorpay</strong></div>
    </div>

    <!-- Right Panel -->
    <div class="right-panel">
        <h5>Payment Options</h5>
        <div class="offer-box">
            <strong>Available Offers</strong><br>
            Win up to &#x20B9;200 cashback via CRED • <a href="#">View all</a>
        </div>

        <!-- Payment Methods -->
        <ul class="nav nav-tabs" id="paymentTabs" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="upi-tab" data-bs-toggle="tab" data-bs-target="#upi" type="button" role="tab">UPI</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="cards-tab" data-bs-toggle="tab" data-bs-target="#cards" type="button" role="tab">Cards</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="emi-tab" data-bs-toggle="tab" data-bs-target="#emi" type="button" role="tab">EMI</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="wallet-tab" data-bs-toggle="tab" data-bs-target="#wallet" type="button" role="tab">Wallet</button>
            </li>
        </ul>

        <div class="tab-content mt-3">
            <!-- UPI -->
            <div class="tab-pane fade show active" id="upi" role="tabpanel">
                <div class="qr-box">
                    <p>Scan the QR using any UPI App</p>
                    <img src="images/qr.png" alt="UPI QR">
                    <div class="mt-2 small">UPI Apps: PhonePe, GPay, Paytm, CRED</div>
                </div>
            </div>

            <!-- Cards -->
            <div class="tab-pane fade" id="cards" role="tabpanel">
                <form>
                    <div class="mb-3">
                        <input type="text" class="form-control" placeholder="Card Number" required>
                    </div>
                    <div class="row g-2">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="MM/YY" required>
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="CVV" required>
                        </div>
                    </div>
                    <div class="mt-3">
                        <button class="btn btn-primary w-100">Pay Now</button>
                    </div>
                </form>
            </div>

            <!-- EMI -->
            <div class="tab-pane fade" id="emi" role="tabpanel">
                <p>Select EMI options available for your card</p>
                <button class="btn btn-outline-primary">View EMI Plans</button>
            </div>

            <!-- Wallet -->
            <div class="tab-pane fade" id="wallet" role="tabpanel">
                <p>Pay using Amazon Pay, Paytm Wallet, or Mobikwik</p>
                <button class="btn btn-outline-success">Pay with Wallet</button>
            </div>
        </div>

        <div class="text-muted small mt-4">
            By proceeding, I agree to Razorpay’s <a href="#">Privacy Notice</a> • <a href="#">Edit Preferences</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

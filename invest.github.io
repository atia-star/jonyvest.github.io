<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JohnyVest - Be a Gentle Investor</title>
    <style>
        /* General body styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f5f1;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Header styling */
        header {
            background: linear-gradient(to right, #4CAF50, #3e8e41);
            color: white;
            padding: 20px;
            text-align: center;
        }

        header .logo {
            width: 100px;
            height: 10;
            margin-bottom: 10px;
        }

        /* Slogan styling */
        .slogan {
            font-style: italic;
            font-size: 1.1rem;
            font-weight: lighter;
            margin-top: 0;
        }

        /* Main section styling */
        main {
            padding: 40px 10%;
        }

        /* Title for sections */
        h2 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 20px;
            font-weight: 600;
        }

        /* Section styling */
        .signup-section, .investment-info, .investment-options, .picture-gallery, .cta {
            background-color: #fff;
            border-radius: 10px;
            margin: 20px 0;
            padding: 30px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }

        /* Signup Section Styling */
        #signup-section {
            display: block;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }

        #signup-section h2 {
            font-size: 2rem;
            margin-bottom: 15px;
        }

        #signup-section input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }

        /* Investment Opportunities Section */
        .investment-options {
            display: none; /* Hide until signup is complete */
        }

        .investment-item {
            background-color: #f9f9f9;
            border-radius: 10px;
            padding: 20px;
            width: 30%;
            margin-bottom: 20px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .investment-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .investment-item img {
            width: 50px;
            height: 50px;
            margin-bottom: 15px;
        }

        .investment-item h3 {
            font-size: 1.5rem;
            color: #4CAF50;
            margin-bottom: 10px;
        }

        .investment-item p {
            color: #555;
            font-size: 1rem;
            margin-bottom: 15px;
        }

        .investment-item button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .investment-item button:hover {
            background-color: #45a049;
        }

        /* Picture Section Styling */
        .picture-gallery {
            display: none; /* Hide until signup is complete */
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-between;
        }

        .picture-item {
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 30%;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .picture-item img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }

        .picture-item p {
            text-align: center;
            font-size: 1.2rem;
            color: #4CAF50;
            font-weight: bold;
            margin-top: 10px;
        }

        .picture-item button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            width: 100%;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 0 0 10px 10px;
            transition: background-color 0.3s ease;
        }

        .picture-item button:hover {
            background-color: #45a049;
        }

        .picture-item:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }

        /* Payment Section Styling */
        #payment-section {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            display: none;
        }

        #payment-section h2 {
            font-size: 2rem;
            margin-bottom: 15px;
        }

        #payment-section p {
            font-size: 1.1rem;
            margin: 15px 0;
        }

        #payment-section button {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 1rem;
            width: 100%;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #payment-section button:hover {
            background-color: #e53935;
        }

        /* Call to Action Section */
        .cta {
            background-color: #ffeb3b;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .cta button {
            background-color: #ff9800;
            color: white;
            padding: 15px 30px;
            font-size: 1.2rem;
            cursor: pointer;
            border-radius: 5px;
            border: none;
            transition: background-color 0.3s ease;
        }

        .cta button:hover {
            background-color: #fb8c00;
        }

        /* Footer Styling */
        footer {
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 1rem;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            main {
                padding: 20px;
            }

            .investment-item, .picture-item {
                width: 48%;
            }

            .cta button {
                width: 100%;
            }
        }

        @media (max-width: 480px) {
            .investment-item, .picture-item {
                width: 100%;
            }

            .cta button {
                padding: 15px 20px;
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <header>
        <img src="killer.png" alt="JohnyVest Logo" class="logo"> <!-- Replace with actual logo -->
        <h1>JohnyVest</h1>
        <p class="slogan">BE A GENTLE INVESTOR</p>
    </header>
    <main>
        <section id="signup-section">
            <h2>Sign Up</h2>
            <input type="text" id="username" placeholder="Username" required />
            <input type="text" id="phone" placeholder="Phone Number" required />
            <button onclick="submitSignup()">Sign Up</button>
        </section>

        <section class="investment-info" style="display:none;">
            <h2>Welcome to JohnyVest</h2>
            <p>Your trusted platform to grow your wealth gently and wisely.</p>
                <p>NOTE:on this platform any money generated is always recorded in dollars but not cides .</p>
        </section>

        <!-- Investment Opportunities Section -->
        <section class="investment-options" style="display:none;">
            <h2>Explore Our Investment Opportunities</h2>
            
            <div class="investment-item">
                <img src="ab.jpg" alt="Stocks Icon">
                <h3>Stocks</h3>
                <p>Invest in the world’s leading companies and earn through capital appreciation and dividends.</p>
                <button onclick="window.location.href='stocks.html'">Learn More</button>
            </div>

            <div class="investment-item">
                <img src="Bond.png" alt="Bonds Icon">
                <h3>Bonds</h3>
                <p>Earn a fixed income by lending to governments or corporations through bonds.</p>
                <button onclick="window.location.href='bonds.html'">Learn More</button>
            </div>

            <div class="investment-item">
                <img src="ko.jpg" alt="Real Estate Icon">
                <h3>Real Estate</h3>
                <p>Invest in property to generate rental income or capital appreciation in the real estate market.</p>
                <button onclick="window.location.href='real-estate.html'">Learn More</button>
            </div>

            <div class="investment-item">
                <img src="fund.png" alt="Mutual Funds Icon">
                <h3>Mutual Funds</h3>
                <p>Invest in a pool of funds managed by professionals, diversifying your portfolio.</p>
                <button onclick="window.location.href='mutual-funds.html'">Learn More</button>
            </div>
        </section>

        <section class="picture-gallery" style="display:none;">
            <h2>Available Pictures for Purchase</h2>
            <div class="gallery">
                <!-- Picture items up to 10 with prices increasing by GHC 20 -->
                <div class="picture-item">
                    <img src="p.jpg" alt="Picture 1">
                    <p>Price: GHC 20</p>
                    <p>40ghc daily interest</p>
                    <button onclick="showPayment(20)">INVEST</button>
                </div>
                <div class="picture-item">
                    <img src="air.jpg" alt="Picture 2">
                    <p>Price: GHC 40</p>
                    <p>80ghc daily interest</p>
                    <button onclick="showPayment(40)">INVEST</button>
                </div>
                <div class="picture-item">
                    <img src="gun.jpg" alt="Picture 3">
                    <p>Price: GHC 60</p>
                    <p>80ghc daily interest</p>
                    <button onclick="showPayment(60)">INVEST</button>
                </div>
                <div class="picture-item">
                    <img src="hi.webp" alt="Picture 4">
                    <p>Price: GHC 80</p>
                    <p>100ghc daily interest</p>
                    <button onclick="showPayment(80)">INVEST</button>
                </div>
                <div class="picture-item">
                    <img src="SAMSUNG-30-100-The-Freestyle-Smart-Portable-Projector.jpg" alt="Picture 5">
                    <p>Price: GHC 100</p>
                     <p>200ghc daily interest</p>
                    <button onclick="showPayment(100)">INVEST</button>
                </div>
                <div class="picture-item">
                    <img src="9bd01eab-12e7-4d30-bce1-36d48b253c9a.jpg" alt="Picture 6">
                    <p>Price: GHC 120</p>
                     <p>240ghc daily interest</p>
                    <button onclick="showPayment(120)">INVEST</button>
                </div>
                <div class="picture-item">
                    <img src="kk.jpg" alt="Picture 7">
                    <p>Price: GHC 140</p>
                     <p>280ghc daily interest</p>
                    <button onclick="showPayment(140)">INVEST</button>
                </div>
                <div class="picture-item">
                    <img src="ro.webp" alt="Picture 8">
                    <p>Price: GHC 160</p>
                     <p>320ghc daily interest</p>
                    <button onclick="showPayment(160)">INVEST</button>
                </div>
                <div class="picture-item">
                    <img src="jk.png" alt="Picture 9">
                    <p>Price: GHC 180</p>
                     <p>365ghc daily interest</p>
                    <button onclick="showPayment(180)">INVEST/15% intere</button>
                </div>
                <div class="picture-item">
                    <img src="g.png" alt="Picture 10">
                    <p>Price: GHC 200</p>
                     <p>500ghc daily interest</p>
                    <button onclick="showPayment(200)">INVEST</button>
                </div>
                  <div class="picture-item">
                    <img src="g.png" alt="Picture 10">
                    <p>Price: GHC 200</p>
                     <p>500ghc daily interest</p>
                    <button onclick="showPayment(200)">INVEST</button>
                </div>      
            </div>
        </section>
        
        <section id="payment-section" style="display:none;">
            <h2>Payment Information</h2>
            <p id="payment-message"></p>
            <p>Please pay the amount through Mobile Money (MoMo) to the following number after paying copy the transaction id and paste it bellow:</p>
             <p>please note:The name of the account is MARY AMOAH</p>
            <p><strong>0536378844</strong></p>
            <p>you will have to withdraw after 2 days whereby the fund manager will use your money to invest into your choice of bussiness for you to gain interest</p>
            <input type="text" id="transaction-id" placeholder="Enter Transaction ID" />
            <button onclick="submitTransaction()">Submit Transaction ID</button
            <button onclick="hidePayment()">Back to Gallery</button>
        </section>

        <section class="cta" style="display:none;">
            <h2>Start Investing Today</h2>
            <button onclick="showInvestmentOptions()">Explore Investments</button>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 JohnyVest. All rights reserved.</p>
        <p>&copy; facing any problem chat 0536378844 / whatsapp only</p>
    </footer>

    <script>
        function showPayment(amount) {
            document.getElementById('payment-message').innerText = 'You are about to pay: GHC ' + amount;
            document.getElementById('payment-section').style.display = 'block';
            document.querySelector('.picture-gallery').style.display = 'none';
        }

        function hidePayment() {
            document.getElementById('payment-section').style.display = 'none';
            document.querySelector('.picture-gallery').style.display = 'block';
        }

        function showInvestmentOptions() {
            document.getElementById('signup-section').style.display = 'none';
            document.querySelector('.investment-info').style.display = 'block';
            document.querySelector('.investment-options').style.display = 'block';
            document.querySelector('.picture-gallery').style.display = 'block';
            document.querySelector('.cta').style.display = 'block';
        }

        function submitTransaction() {
            const transactionId = document.getElementById('transaction-id').value;
            if (transactionId) {
                alert('Transaction ID ' + transactionId + ' submitted successfully.');
                hidePayment();
            } else {
                alert('Please enter a transaction ID.');
            }
        }

        function submitSignup() {
            const username = document.getElementById('username').value;
            const phone = document.getElementById('phone').value;
            if (username && phone) {
                alert('Signup successful for ' + username + ' with phone ' + phone);
                showInvestmentOptions();
            } else {
                alert('Please fill out all fields.');
            }
        }
    </script>
</body>
</html>
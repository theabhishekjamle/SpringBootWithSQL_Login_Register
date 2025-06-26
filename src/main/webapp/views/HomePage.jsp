<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>4Wheel Cars - Home</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: "Segoe UI", sans-serif;
      color: #333;
      line-height: 1.6;
    }

    header {
      background: #111;
      color: #fff;
      display: flex;
      justify-content: space-between;
      padding: 1rem 2rem;
      align-items: center;
    }

    .logo {
      font-size: 1.8rem;
      font-weight: bold;
    }
    .logo span {
      color: #e91e63;
    }

    nav ul {
      list-style: none;
      display: flex;
      gap: 1.5rem;
    }
    nav a {
      color: #fff;
      text-decoration: none;
    }

    .hero {
      background: url('https://via.placeholder.com/1200x400') no-repeat center/cover;
      height: 400px;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
    }
    .hero-text {
      background: rgba(0, 0, 0, 0.6);
      padding: 2rem;
      color: white;
      border-radius: 10px;
    }
    .hero-text h1 {
      font-size: 3rem;
      margin-bottom: 1rem;
    }
    .btn {
      margin-top: 1rem;
      padding: 0.75rem 1.5rem;
      background: #e91e63;
      color: white;
      text-decoration: none;
      border-radius: 5px;
      cursor: pointer;
    }
    .search-form {
      margin-top: 1rem;
      display: flex;
      flex-direction: column;
      gap: 0.8rem;
      align-items: center;
    }
    .search-form input {
      padding: 0.5rem;
      width: 250px;
      border: none;
      border-radius: 5px;
    }

    .featured {
      padding: 2rem;
      background-color: #f9f9f9;
      text-align: center;
    }
    .car-grid {
      display: flex;
      justify-content: center;
      gap: 2rem;
      margin-top: 2rem;
    }
    .car-card {
      background: white;
      border-radius: 10px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
      padding: 1rem;
      width: 300px;
    }
    .car-card img {
      width: 100%;
      border-radius: 8px;
    }

    .services {
      padding: 2rem;
      background: #fff;
      text-align: center;
    }
    .service-list {
      display: flex;
      justify-content: center;
      gap: 2rem;
      margin-top: 1.5rem;
    }
    .service-item {
      width: 200px;
      padding: 1rem;
      border: 1px solid #ddd;
      border-radius: 8px;
    }

    footer {
      background: #111;
      color: #fff;
      text-align: center;
      padding: 1rem;
      margin-top: 2rem;
    }

    </style>
</head>
<body>

<header>
    <div class="logo">4Wheel<span>Cars</span></div>
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
            <li><a href="#">Cars</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>
</header>

<section class="hero">
    <div class="hero-text">
        <h1>Drive Your Dream Car</h1>
        <p>Explore top models and unbeatable deals with 4Wheel Cars.</p>

        <form action="${pageContext.request.contextPath}/search" method="get" class="search-form">
            <input type="text" name="carName" placeholder="Enter car name" required />
            <input type="text" name="budget" placeholder="Max Budget (e.g. 10 Lakh)" />
            <button type="submit" class="btn">Search Cars</button>
        </form>
    </div>
</section>

<section class="featured">
    <h2>Featured Cars</h2>
    <div class="car-grid">
        <div class="car-card">
            <img src="https://via.placeholder.com/300x180" alt="BMW X5">
            <h3>BMW X5</h3>
            <p>Luxury SUV with powerful performance.</p>
        </div>
        <div class="car-card">
            <img src="https://via.placeholder.com/300x180" alt="Audi A6">
            <h3>Audi A6</h3>
            <p>Sleek design and cutting-edge technology.</p>
        </div>
        <div class="car-card">
            <img src="https://via.placeholder.com/300x180" alt="Toyota Fortuner">
            <h3>Toyota Fortuner</h3>
            <p>Rugged and reliable for every journey.</p>
        </div>
    </div>
</section>

<section class="services">
    <h2>Our Services</h2>
    <div class="service-list">
        <div class="service-item">
            <h4>Buy & Sell</h4>
            <p>Find new and used cars with ease.</p>
        </div>
        <div class="service-item">
            <h4>Car Finance</h4>
            <p>EMI options with lowest interest rates.</p>
        </div>
        <div class="service-item">
            <h4>Service Support</h4>
            <p>Authorized service & warranty support.</p>
        </div>
    </div>
</section>

<footer>
    <p>&copy; 2025 4Wheel Cars. All Rights Reserved.</p>
</footer>

</body>
</html>

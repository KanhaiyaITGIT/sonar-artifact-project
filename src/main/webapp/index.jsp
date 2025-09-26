<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Shopsy Clone | Learning</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: #f4f4f4;
    }
    header {
      background: #2874f0;
      color: #fff;
      padding: 15px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    header h1 {
      margin: 0;
      font-size: 22px;
    }
    nav a {
      color: #fff;
      margin: 0 10px;
      text-decoration: none;
      font-weight: bold;
    }
    .banner {
      background: url("https://via.placeholder.com/1200x300") no-repeat center/cover;
      height: 300px;
    }
    .products {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 15px;
      padding: 20px;
    }
    .product-card {
      background: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.2);
      text-align: center;
      padding: 15px;
    }
    .product-card img {
      max-width: 100%;
      height: 150px;
      object-fit: cover;
    }
    .product-card h3 {
      font-size: 18px;
      margin: 10px 0;
    }
    .product-card p {
      color: green;
      font-weight: bold;
    }
    .product-card button {
      padding: 10px;
      background: #ff5722;
      border: none;
      color: #fff;
      cursor: pointer;
      border-radius: 4px;
    }
    footer {
      background: #333;
      color: #fff;
      text-align: center;
      padding: 15px;
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <header>
    <h1>Shopsy Clone</h1>
    <nav>
      <a href="#">Home</a>
      <a href="#">Products</a>
      <a href="#">Cart</a>
      <a href="#">Contact</a>
    </nav>
  </header>

  <section class="banner"></section>

  <section class="products">
    <div class="product-card">
      <img src="https://via.placeholder.com/200x150" alt="Product 1">
      <h3>Product 1</h3>
      <p>₹499</p>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://via.placeholder.com/200x150" alt="Product 2">
      <h3>Product 2</h3>
      <p>₹799</p>
      <button>Add to Cart</button>
    </div>
    <div class="product-card">
      <img src="https://via.placeholder.com/200x150" alt="Product 3">
      <h3>Product 3</h3>
      <p>₹999</p>
      <button>Add to Cart</button>
    </div>
  </section>

  <footer>
    <p>© 2025 Shopsy Clone | Learning Purpose Only</p>
  </footer>
</body>
</html>


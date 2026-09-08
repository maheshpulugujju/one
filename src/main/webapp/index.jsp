<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop — Premium Store</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

  <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --black: #111111;
      --dark: #18181b;
      --purple: #7c3aed;
      --purple-light: #ede9fe;
      --text: #18181b;
      --gray: #71717a;
      --light: #f7f7f8;
      --border: #e4e4e7;
      --white: #ffffff;
      --green: #16a34a;
      --red: #ef4444;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: "Inter", sans-serif;
      background: #fff;
      color: var(--text);
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    button,
    input {
      font-family: inherit;
    }

    button {
      cursor: pointer;
    }

    img {
      width: 100%;
      display: block;
    }

    .container {
      width: min(1200px, 92%);
      margin: auto;
    }

    /* ================= TOP BAR ================= */

    .top-bar {
      background: #111;
      color: #fff;
      text-align: center;
      padding: 9px;
      font-size: 12px;
      font-weight: 600;
    }

    .top-bar span {
      color: #c4b5fd;
    }

    /* ================= HEADER ================= */

    header {
      position: sticky;
      top: 0;
      z-index: 1000;
      background: rgba(255,255,255,.94);
      backdrop-filter: blur(15px);
      border-bottom: 1px solid var(--border);
    }

    .header {
      height: 76px;
      display: flex;
      align-items: center;
      gap: 30px;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 10px;
      font-size: 22px;
      font-weight: 800;
      letter-spacing: -.7px;
    }

    .logo-mark {
      width: 40px;
      height: 40px;
      border-radius: 12px;
      display: grid;
      place-items: center;
      color: white;
      background: var(--black);
    }

    nav {
      display: flex;
      gap: 25px;
      margin-left: 20px;
    }

    nav a {
      font-size: 13px;
      font-weight: 600;
      color: #52525b;
      transition: .2s;
    }

    nav a:hover {
      color: var(--purple);
    }

    .search {
      margin-left: auto;
      width: 260px;
      position: relative;
    }

    .search input {
      width: 100%;
      height: 42px;
      padding: 0 42px 0 15px;
      border: 1px solid var(--border);
      border-radius: 12px;
      outline: none;
      background: #fafafa;
      font-size: 13px;
    }

    .search input:focus {
      border-color: var(--purple);
      background: white;
    }

    .search i {
      position: absolute;
      right: 15px;
      top: 50%;
      transform: translateY(-50%);
      color: var(--gray);
    }

    .header-icons {
      display: flex;
      gap: 8px;
    }

    .header-btn {
      width: 42px;
      height: 42px;
      border: 0;
      background: #f4f4f5;
      border-radius: 12px;
      position: relative;
      transition: .2s;
    }

    .header-btn:hover {
      background: var(--purple-light);
      color: var(--purple);
    }

    .badge {
      position: absolute;
      top: -5px;
      right: -5px;
      min-width: 18px;
      height: 18px;
      border-radius: 20px;
      display: grid;
      place-items: center;
      background: var(--red);
      color: white;
      font-size: 9px;
      font-weight: 800;
    }

    .menu {
      display: none;
    }

    /* ================= HERO ================= */

    .hero {
      min-height: 650px;
      position: relative;
      display: flex;
      align-items: center;
      overflow: hidden;
      background:
        linear-gradient(90deg, rgba(0,0,0,.9), rgba(0,0,0,.55), rgba(0,0,0,.1)),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1900&q=90")
        center/cover;
      color: white;
    }

    .hero-content {
      max-width: 680px;
    }

    .hero-label {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 8px 13px;
      border: 1px solid rgba(255,255,255,.2);
      background: rgba(255,255,255,.1);
      border-radius: 30px;
      font-size: 11px;
      font-weight: 700;
      margin-bottom: 22px;
    }

    .hero h1 {
      font-size: clamp(45px, 7vw, 82px);
      line-height: .98;
      letter-spacing: -4px;
      margin-bottom: 24px;
    }

    .hero h1 span {
      display: block;
      color: #c4b5fd;
    }

    .hero p {
      max-width: 570px;
      color: #d4d4d8;
      font-size: 17px;
      line-height: 1.7;
      margin-bottom: 30px;
    }

    .hero-actions {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
    }

    .btn {
      border: 0;
      border-radius: 12px;
      padding: 14px 21px;
      font-size: 13px;
      font-weight: 700;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 9px;
      transition: .25s;
    }

    .btn-white {
      background: white;
      color: #111;
    }

    .btn-white:hover {
      transform: translateY(-3px);
      box-shadow: 0 15px 30px rgba(0,0,0,.25);
    }

    .btn-purple {
      background: var(--purple);
      color: white;
    }

    .btn-purple:hover {
      background: #6d28d9;
      transform: translateY(-3px);
    }

    .btn-transparent {
      color: white;
      border: 1px solid rgba(255,255,255,.3);
      background: rgba(255,255,255,.08);
    }

    /* ================= TRUST ================= */

    .trust {
      border-bottom: 1px solid var(--border);
    }

    .trust-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
    }

    .trust-item {
      padding: 25px 20px;
      display: flex;
      align-items: center;
      gap: 13px;
      border-right: 1px solid var(--border);
    }

    .trust-item:last-child {
      border-right: 0;
    }

    .trust-icon {
      width: 42px;
      height: 42px;
      display: grid;
      place-items: center;
      border-radius: 12px;
      background: var(--purple-light);
      color: var(--purple);
    }

    .trust-item h4 {
      font-size: 13px;
      margin-bottom: 2px;
    }

    .trust-item p {
      color: var(--gray);
      font-size: 11px;
    }

    /* ================= GENERAL SECTION ================= */

    section {
      padding: 90px 0;
    }

    .heading {
      display: flex;
      justify-content: space-between;
      align-items: end;
      gap: 20px;
      margin-bottom: 35px;
    }

    .heading h2 {
      font-size: 36px;
      letter-spacing: -1.5px;
    }

    .heading p {
      color: var(--gray);
      font-size: 13px;
    }

    .view-all {
      font-size: 13px;
      font-weight: 700;
      color: var(--purple);
    }

    /* ================= CATEGORIES ================= */

    .category-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 16px;
    }

    .category {
      height: 250px;
      border-radius: 20px;
      overflow: hidden;
      position: relative;
      cursor: pointer;
    }

    .category img {
      height: 100%;
      object-fit: cover;
      transition: .5s;
    }

    .category:hover img {
      transform: scale(1.08);
    }

    .category::after {
      content: "";
      position: absolute;
      inset: 0;
      background: linear-gradient(
        transparent 20%,
        rgba(0,0,0,.78)
      );
    }

    .category-content {
      position: absolute;
      z-index: 2;
      left: 22px;
      right: 22px;
      bottom: 20px;
      color: white;
    }

    .category-content h3 {
      font-size: 19px;
      margin-bottom: 3px;
    }

    .category-content span {
      font-size: 11px;
      color: #d4d4d8;
    }

    .category-arrow {
      position: absolute;
      right: 20px;
      bottom: 20px;
      z-index: 3;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      background: rgba(255,255,255,.15);
      color: white;
    }

    /* ================= PRODUCTS ================= */

    .products-section {
      background: #f7f7f8;
    }

    .product-toolbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 25px;
      gap: 15px;
    }

    .filters {
      display: flex;
      gap: 7px;
      flex-wrap: wrap;
    }

    .filter {
      border: 1px solid var(--border);
      background: white;
      padding: 9px 15px;
      border-radius: 10px;
      font-size: 12px;
      font-weight: 700;
    }

    .filter.active,
    .filter:hover {
      background: #111;
      color: white;
      border-color: #111;
    }

    .sort {
      border: 1px solid var(--border);
      background: white;
      padding: 9px 13px;
      border-radius: 10px;
      outline: none;
      font-size: 12px;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 18px;
    }

    .product {
      background: white;
      border: 1px solid var(--border);
      border-radius: 18px;
      overflow: hidden;
      transition: .25s;
    }

    .product:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 35px rgba(0,0,0,.08);
    }

    .product-image {
      height: 270px;
      position: relative;
      overflow: hidden;
      background: #f4f4f5;
    }

    .product-image img {
      height: 100%;
      object-fit: cover;
      transition: .4s;
    }

    .product:hover .product-image img {
      transform: scale(1.05);
    }

    .tag {
      position: absolute;
      top: 12px;
      left: 12px;
      padding: 6px 9px;
      background: #111;
      color: white;
      border-radius: 7px;
      font-size: 9px;
      font-weight: 800;
    }

    .heart {
      position: absolute;
      right: 12px;
      top: 12px;
      width: 36px;
      height: 36px;
      border: 0;
      border-radius: 50%;
      background: rgba(255,255,255,.94);
      color: #52525b;
      transition: .2s;
    }

    .heart:hover,
    .heart.active {
      color: var(--red);
    }

    .product-info {
      padding: 17px;
    }

    .product-category {
      color: var(--purple);
      text-transform: uppercase;
      font-size: 9px;
      font-weight: 800;
      letter-spacing: 1px;
    }

    .product-name {
      font-size: 14px;
      font-weight: 700;
      margin: 5px 0 8px;
    }

    .rating {
      display: flex;
      gap: 6px;
      align-items: center;
      font-size: 11px;
      color: var(--gray);
      margin-bottom: 13px;
    }

    .stars {
      color: #f59e0b;
    }

    .price-line {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .price strong {
      font-size: 17px;
    }

    .old {
      color: #a1a1aa;
      text-decoration: line-through;
      font-size: 10px;
      margin-left: 5px;
    }

    .cart-add {
      width: 37px;
      height: 37px;
      border: 0;
      border-radius: 10px;
      background: #111;
      color: white;
      transition: .2s;
    }

    .cart-add:hover {
      background: var(--purple);
      transform: scale(1.06);
    }

    /* ================= PROMO ================= */

    .promo {
      background: #111;
      border-radius: 28px;
      color: white;
      overflow: hidden;
      position: relative;
    }

    .promo-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      min-height: 450px;
    }

    .promo-content {
      padding: 65px;
      display: flex;
      justify-content: center;
      flex-direction: column;
    }

    .promo-small {
      color: #a78bfa;
      text-transform: uppercase;
      letter-spacing: 1px;
      font-size: 10px;
      font-weight: 800;
    }

    .promo h2 {
      font-size: 46px;
      line-height: 1.05;
      letter-spacing: -2px;
      margin: 12px 0 15px;
    }

    .promo p {
      color: #a1a1aa;
      font-size: 13px;
      margin-bottom: 22px;
      max-width: 450px;
    }

    .promo-image {
      overflow: hidden;
    }

    .promo-image img {
      height: 100%;
      object-fit: cover;
    }

    /* ================= TESTIMONIALS ================= */

    .review-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 18px;
    }

    .review {
      border: 1px solid var(--border);
      border-radius: 18px;
      padding: 25px;
    }

    .review-stars {
      color: #f59e0b;
      font-size: 13px;
      margin-bottom: 15px;
    }

    .review p {
      font-size: 13px;
      color: #52525b;
      line-height: 1.8;
      margin-bottom: 22px;
    }

    .review-user {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .avatar {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: var(--purple-light);
      color: var(--purple);
      display: grid;
      place-items: center;
      font-size: 12px;
      font-weight: 800;
    }

    .review-user strong {
      display: block;
      font-size: 12px;
    }

    .review-user span {
      font-size: 10px;
      color: var(--gray);
    }

    /* ================= NEWSLETTER ================= */

    .newsletter {
      background: #f4f4f5;
      border-radius: 25px;
      padding: 65px 30px;
      text-align: center;
    }

    .newsletter h2 {
      font-size: 36px;
      letter-spacing: -1px;
      margin-bottom: 8px;
    }

    .newsletter p {
      color: var(--gray);
      font-size: 13px;
      margin-bottom: 22px;
    }

    .newsletter-form {
      max-width: 500px;
      margin: auto;
      display: flex;
      background: white;
      padding: 5px;
      border: 1px solid var(--border);
      border-radius: 13px;
    }

    .newsletter-form input {
      flex: 1;
      min-width: 0;
      border: 0;
      outline: none;
      padding: 11px;
      font-size: 12px;
    }

    /* ================= FOOTER ================= */

    footer {
      background: #111;
      color: white;
      padding: 65px 0 25px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 50px;
    }

    .footer-brand p {
      color: #71717a;
      max-width: 350px;
      font-size: 12px;
      margin: 18px 0;
      line-height: 1.8;
    }

    .socials {
      display: flex;
      gap: 8px;
    }

    .socials a {
      width: 35px;
      height: 35px;
      display: grid;
      place-items: center;
      border-radius: 9px;
      background: #18181b;
      color: #a1a1aa;
    }

    .socials a:hover {
      background: var(--purple);
      color: white;
    }

    .footer-col h4 {
      font-size: 12px;
      margin-bottom: 16px;
    }

    .footer-col a {
      color: #71717a;
      display: block;
      font-size: 11px;
      margin: 10px 0;
    }

    .footer-col a:hover {
      color: white;
    }

    .copyright {
      border-top: 1px solid #27272a;
      margin-top: 45px;
      padding-top: 20px;
      color: #52525b;
      text-align: center;
      font-size: 10px;
    }

    /* ================= TOAST ================= */

    .toast {
      position: fixed;
      right: 20px;
      bottom: 20px;
      background: #111;
      color: white;
      padding: 14px 18px;
      border-radius: 12px;
      display: flex;
      align-items: center;
      gap: 10px;
      font-size: 12px;
      z-index: 9999;
      opacity: 0;
      transform: translateY(30px);
      pointer-events: none;
      transition: .3s;
    }

    .toast.show {
      opacity: 1;
      transform: translateY(0);
    }

    /* ================= RESPONSIVE ================= */

    @media(max-width: 1050px) {
      nav {
        display: none;
      }

      .product-grid {
        grid-template-columns: repeat(3, 1fr);
      }

      .search {
        margin-left: auto;
      }
    }

    @media(max-width: 750px) {
      .header {
        height: 68px;
        gap: 8px;
      }

      .search {
        display: none;
      }

      .menu {
        display: block;
      }

      .hero {
        min-height: 570px;
      }

      .hero h1 {
        font-size: 50px;
      }

      section {
        padding: 65px 0;
      }

      .trust-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .trust-item {
        border-bottom: 1px solid var(--border);
      }

      .category-grid {
        grid-template-columns: 1fr 1fr;
      }

      .product-grid {
        grid-template-columns: 1fr 1fr;
      }

      .promo-grid {
        grid-template-columns: 1fr;
      }

      .promo-content {
        padding: 45px 25px;
      }

      .promo h2 {
        font-size: 38px;
      }

      .promo-image {
        height: 300px;
      }

      .review-grid {
        grid-template-columns: 1fr;
      }

      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }
    }

    @media(max-width: 500px) {
      .logo {
        font-size: 19px;
      }

      .logo-mark {
        width: 36px;
        height: 36px;
      }

      .header-btn {
        width: 38px;
        height: 38px;
      }

      .hero h1 {
        font-size: 44px;
        letter-spacing: -2px;
      }

      .hero p {
        font-size: 14px;
      }

      .heading {
        display: block;
      }

      .heading h2 {
        font-size: 28px;
        margin-bottom: 7px;
      }

      .category-grid {
        grid-template-columns: 1fr;
      }

      .category {
        height: 220px;
      }

      .product-grid {
        grid-template-columns: 1fr;
      }

      .product-image {
        height: 300px;
      }

      .product-toolbar {
        display: block;
      }

      .sort {
        margin-top: 12px;
      }

      .newsletter {
        padding: 45px 18px;
      }

      .newsletter h2 {
        font-size: 28px;
      }

      .newsletter-form {
        flex-direction: column;
        background: transparent;
        border: 0;
        gap: 8px;
      }

      .newsletter-form input {
        background: white;
        border: 1px solid var(--border);
        border-radius: 10px;
      }

      .footer-grid {
        grid-template-columns: 1fr;
        gap: 30px;
      }
    }
  </style>
</head>

<body>

  <!-- TOP BAR -->
  <div class="top-bar">
    Free shipping on orders over $50 · <span>New customers get 15% off</span>
  </div>

  <!-- HEADER -->
  <header>
    <div class="container header">

      <a href="#home" class="logo">
        <div class="logo-mark">
          <i class="fa-solid fa-bag-shopping"></i>
        </div>
        NexusShop
      </a>

      <nav>
        <a href="#home">Home</a>
        <a href="#categories">Categories</a>
        <a href="#shop">Shop</a>
        <a href="#deals">Deals</a>
        <a href="#reviews">Reviews</a>
      </nav>

      <div class="search">
        <input id="search" type="text" placeholder="Search products...">
        <i class="fa-solid fa-magnifying-glass"></i>
      </div>

      <div class="header-icons">

        <button class="header-btn" id="wishlistButton">
          <i class="fa-regular fa-heart"></i>
          <span class="badge" id="wishlistCount">0</span>
        </button>

        <button class="header-btn" id="cartButton">
          <i class="fa-solid fa-cart-shopping"></i>
          <span class="badge" id="cartCount">0</span>
        </button>

        <button class="header-btn menu" id="menuButton">
          <i class="fa-solid fa-bars"></i>
        </button>

      </div>

    </div>
  </header>

  <!-- HERO -->
  <section class="hero" id="home">
    <div class="container">

      <div class="hero-content">

        <div class="hero-label">
          <i class="fa-solid fa-bolt"></i>
          THE NEW NEXUSSHOP
        </div>

        <h1>
          Shop smarter.
          <span>Live better.</span>
        </h1>

        <p>
          Discover products that combine style, technology and everyday
          usefulness. Everything you need, carefully selected in one place.
        </p>

        <div class="hero-actions">
          <a href="#shop" class="btn btn-white">
            Start shopping
            <i class="fa-solid fa-arrow-right"></i>
          </a>

          <a href="#categories" class="btn btn-transparent">
            Explore collections
          </a>
        </div>

      </div>

    </div>
  </section>

  <!-- TRUST -->
  <div class="trust">
    <div class="container trust-grid">

      <div class="trust-item">
        <div class="trust-icon">
          <i class="fa-solid fa-truck"></i>
        </div>
        <div>
          <h4>Free delivery</h4>
          <p>Orders over $50</p>
        </div>
      </div>

      <div class="trust-item">
        <div class="trust-icon">
          <i class="fa-solid fa-lock"></i>
        </div>
        <div>
          <h4>Secure checkout</h4>
          <p>100% protected</p>
        </div>
      </div>

      <div class="trust-item">
        <div class="trust-icon">
          <i class="fa-solid fa-rotate"></i>
        </div>
        <div>
          <h4>Easy returns</h4>
          <p>30-day guarantee</p>
        </div>
      </div>

      <div class="trust-item">
        <div class="trust-icon">
          <i class="fa-solid fa-headset"></i>
        </div>
        <div>
          <h4>Customer support</h4>
          <p>Here whenever you need</p>
        </div>
      </div>

    </div>
  </div>

  <!-- CATEGORIES -->
  <section id="categories">
    <div class="container">

      <div class="heading">
        <div>
          <h2>Explore collections</h2>
          <p>Find your next favorite thing.</p>
        </div>

        <a href="#shop" class="view-all">
          View all <i class="fa-solid fa-arrow-right"></i>
        </a>
      </div>

      <div class="category-grid" id="categoryGrid"></div>

    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="products-section" id="shop">
    <div class="container">

      <div class="heading">
        <div>
          <h2>Trending now</h2>
          <p>Products our customers can't stop talking about.</p>
        </div>
      </div>

      <div class="product-toolbar">

        <div class="filters">
          <button class="filter active" data-filter="all">All</button>
          <button class="filter" data-filter="new">New arrivals</button>
          <button class="filter" data-filter="sale">On sale</button>
          <button class="filter" data-filter="rating">Top rated</button>
        </div>

        <select class="sort" id="sort">
          <option value="default">Sort: Featured</option>
          <option value="low">Price: Low to high</option>
          <option value="high">Price: High to low</option>
          <option value="rating">Highest rated</option>
        </select>

      </div>

      <div class="product-grid" id="productGrid"></div>

    </div>
  </section>

  <!-- DEAL -->
  <section id="deals">
    <div class="container">

      <div class="promo">

        <div class="promo-grid">

          <div class="promo-content">

            <div class="promo-small">
              Weekend exclusive
            </div>

            <h2>
              Upgrade your everyday.
            </h2>

            <p>
              Premium technology and lifestyle essentials at prices you'll
              actually love.
            </p>

            <div>
              <a href="#shop" class="btn btn-purple">
                Shop the offer
                <i class="fa-solid fa-arrow-right"></i>
              </a>
            </div>

          </div>

          <div class="promo-image">
            <img
              src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=1200&q=90"
              alt="Laptop deal">
          </div>

        </div>

      </div>

    </div>
  </section>

  <!-- REVIEWS -->
  <section id="reviews">
    <div class="container">

      <div class="heading">
        <div>
          <h2>What shoppers say</h2>
          <p>Thousands of happy customers and counting.</p>
        </div>
      </div>

      <div class="review-grid">

        <div class="review">
          <div class="review-stars">★★★★★</div>

          <p>
            “The website is so easy to use and my order arrived much faster
            than I expected. Everything was exactly as described.”
          </p>

          <div class="review-user">
            <div class="avatar">AM</div>
            <div>
              <strong>Ava Martin</strong>
              <span>Verified customer</span>
            </div>
          </div>
        </div>

        <div class="review">
          <div class="review-stars">★★★★★</div>

          <p>
            “I found exactly what I was looking for in minutes. Great prices,
            beautiful products and a really smooth shopping experience.”
          </p>

          <div class="review-user">
            <div class="avatar">ML</div>
            <div>
              <strong>Michael Lee</strong>
              <span>Verified customer</span>
            </div>
          </div>
        </div>

        <div class="review">
          <div class="review-stars">★★★★★</div>

          <p>
            “NexusShop has become my go-to store. The product selection is
            excellent and customer service is fantastic.”
          </p>

          <div class="review-user">
            <div class="avatar">SC</div>
            <div>
              <strong>Sophia Chen</strong>
              <span>Verified customer</span>
            </div>
          </div>
        </div>

      </div>

    </div>
  </section>

  <!-- NEWSLETTER -->
  <section>
    <div class="container">

      <div class="newsletter">

        <h2>Get the good stuff first.</h2>

        <p>
          New arrivals, private offers and shopping inspiration.
        </p>

        <form class="newsletter-form" id="newsletter">
          <input
            type="email"
            id="email"
            placeholder="Your email address"
            required
          >

          <button class="btn btn-purple" type="submit">
            Subscribe
          </button>
        </form>

      </div>

    </div>
  </section>

  <!-- FOOTER -->
  <footer>

    <div class="container">

      <div class="footer-grid">

        <div class="footer-brand">

          <a href="#home" class="logo">
            <div class="logo-mark">
              <i class="fa-solid fa-bag-shopping"></i>
            </div>
            NexusShop
          </a>

          <p>
            Modern shopping for modern living. Discover products you'll love,
            without the unnecessary complexity.
          </p>

          <div class="socials">
            <a href="#"><i class="fa-brands fa-instagram"></i></a>
            <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
            <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
            <a href="#"><i class="fa-brands fa-youtube"></i></a>
          </div>

        </div>

        <div class="footer-col">
          <h4>SHOP</h4>
          <a href="#shop">All products</a>
          <a href="#shop">New arrivals</a>
          <a href="#shop">Best sellers</a>
          <a href="#deals">Special offers</a>
        </div>

        <div class="footer-col">
          <h4>HELP</h4>
          <a href="#">Shipping</a>
          <a href="#">Returns</a>
          <a href="#">FAQ</a>
          <a href="#">Contact</a>
        </div>

        <div class="footer-col">
          <h4>ABOUT</h4>
          <a href="#">Our story</a>
          <a href="#">Careers</a>
          <a href="#">Privacy</a>
          <a href="#">Terms</a>
        </div>

      </div>

      <div class="copyright">
        © <span id="year"></span> NexusShop. All rights reserved.
      </div>

    </div>

  </footer>

  <!-- TOAST -->
  <div class="toast" id="toast">
    <i class="fa-solid fa-circle-check"></i>
    <span id="toastText">Added to cart</span>
  </div>

  <script>
    const categories = [
      {
        name: "Smartphones",
        count: "24 products",
        image: "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=900&q=85"
      },
      {
        name: "Laptops",
        count: "18 products",
        image: "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=900&q=85"
      },
      {
        name: "Clothing",
        count: "56 products",
        image: "https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=900&q=85"
      },
      {
        name: "Gadgets",
        count: "31 products",
        image: "https://images.unsplash.com/photo-1498049794561-7780e7231661?auto=format&fit=crop&w=900&q=85"
      },
      {
        name: "Footwear",
        count: "42 products",
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=900&q=85"
      },
      {
        name: "Accessories",
        count: "37 products",
        image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=85"
      }
    ];

    const products = [
      {
        id: 1,
        name: "iPhone 14 Pro Max",
        category: "Smartphones",
        price: 999,
        oldPrice: 1099,
        rating: 4.9,
        reviews: 128,
        tag: "BEST SELLER",
        type: "sale",
        image: "https://images.unsplash.com/photo-1678685888221-cda773a3dcdb?auto=format&fit=crop&w=900&q=85"
      },
      {
        id: 2,
        name: 'MacBook Pro 14"',
        category: "Laptops",
        price: 1799,
        oldPrice: 1999,
        rating: 4.8,
        reviews: 94,
        tag: "POPULAR",
        type: "sale",
        image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85"
      },
      {
        id: 3,
        name: "Apple Watch Series 8",
        category: "Gadgets",
        price: 349,
        oldPrice: 399,
        rating: 4.7,
        reviews: 82,
        tag: "NEW",
        type: "new",
        image: "https://images.unsplash.com/photo-1546868871-7041f2a55e3a?auto=format&fit=crop&w=900&q=85"
      },
      {
        id: 4,
        name: "Nike Air Max 270",
        category: "Footwear",
        price: 129,
        oldPrice: 159,
        rating: 4.6,
        reviews: 76,
        tag: "20% OFF",
        type: "sale",
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=900&q=85"
      },
      {
        id: 5,
        name: "Sony A7 IV Camera",
        category: "Gadgets",
        price: 2499,
        oldPrice: null,
        rating: 4.9,
        reviews: 51,
        tag: "TOP RATED",
        type: "rating",
        image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=900&q=85"
      },
      {
        id: 6,
        name: "Premium Fragrance",
        category: "Accessories",
        price: 149,
        oldPrice: 179,
        rating: 4.5,
        reviews: 63,
        tag: "SALE",
        type: "sale",
        image: "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=900&q=85"
      },
      {
        id: 7,
        name: "Travel Backpack",
        category: "Accessories",
        price: 79,
        oldPrice: 99,
        rating: 4.7,
        reviews: 45,
        tag: "NEW",
        type: "new",
        image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=900&q=85"
      },
      {
        id: 8,
        name: "Wireless Headphones",
        category: "Gadgets",
        price: 299,
        oldPrice: 349,
        rating: 4.9,
        reviews: 117,
        tag: "BEST SELLER",
        type: "rating",
        image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=85"
      }
    ];

    let currentFilter = "all";
    let searchTerm = "";
    let cart = 0;
    let wishlist = new Set();

    const categoryGrid = document.getElementById("categoryGrid");
    const productGrid = document.getElementById("productGrid");

    /* ================= CATEGORIES ================= */

    function renderCategories() {
      categoryGrid.innerHTML = categories.map(category => `
        <div class="category" data-category="${category.name}">

          <img src="${category.image}" alt="${category.name}">

          <div class="category-content">
            <h3>${category.name}</h3>
            <span>${category.count}</span>
          </div>

          <div class="category-arrow">
            <i class="fa-solid fa-arrow-right"></i>
          </div>

        </div>
      `).join("");
    }

    /* ================= PRODUCTS ================= */

    function renderProducts() {

      let list = products.filter(product => {

        const matchesSearch =
          product.name.toLowerCase().includes(searchTerm.toLowerCase()) ||
          product.category.toLowerCase().includes(searchTerm.toLowerCase());

        let matchesFilter = true;

        if (currentFilter === "new") {
          matchesFilter = product.type === "new";
        }

        if (currentFilter === "sale") {
          matchesFilter = product.oldPrice !== null;
        }

        if (currentFilter === "rating") {
          matchesFilter = product.rating >= 4.8;
        }

        return matchesSearch && matchesFilter;
      });

      const sort = document.getElementById("sort").value;

      if (sort === "low") {
        list.sort((a, b) => a.price - b.price);
      }

      if (sort === "high") {
        list.sort((a, b) => b.price - a.price);
      }

      if (sort === "rating") {
        list.sort((a, b) => b.rating - a.rating);
      }

      if (list.length === 0) {
        productGrid.innerHTML = `
          <div style="
            grid-column:1/-1;
            text-align:center;
            padding:70px 20px;
            color:#71717a;
          ">
            <i class="fa-solid fa-box-open"
               style="font-size:40px;margin-bottom:15px;"></i>
            <h3>No products found</h3>
            <p>Try another search or filter.</p>
          </div>
        `;
        return;
      }

      productGrid.innerHTML = list.map(product => {

        const liked = wishlist.has(product.id);

        return `
          <article class="product">

            <div class="product-image">

              <img
                src="${product.image}"
                alt="${product.name}"
                loading="lazy"
              >

              <span class="tag">
                ${product.tag}
              </span>

              <button
                class="heart ${liked ? "active" : ""}"
                data-heart="${product.id}"
              >
                <i class="${liked ? "fa-solid" : "fa-regular"} fa-heart"></i>
              </button>

            </div>

            <div class="product-info">

              <div class="product-category">
                ${product.category}
              </div>

              <h3 class="product-name">
                ${product.name}
              </h3>

              <div class="rating">
                <span class="stars">
                  ★★★★★
                </span>
                <span>
                  ${product.rating} · ${product.reviews} reviews
                </span>
              </div>

              <div class="price-line">

                <div class="price">
                  <strong>$${product.price.toLocaleString()}</strong>

                  ${
                    product.oldPrice
                    ? `<span class="old">$${product.oldPrice.toLocaleString()}</span>`
                    : ""
                  }
                </div>

                <button
                  class="cart-add"
                  data-add="${product.id}"
                  title="Add to cart"
                >
                  <i class="fa-solid fa-plus"></i>
                </button>

              </div>

            </div>

          </article>
        `;
      }).join("");
    }

    /* ================= CLICK EVENTS ================= */

    document.addEventListener("click", event => {

      const filter = event.target.closest(".filter");

      if (filter) {

        document.querySelectorAll(".filter")
          .forEach(btn => btn.classList.remove("active"));

        filter.classList.add("active");

        currentFilter = filter.dataset.filter;

        renderProducts();
      }

      const addButton = event.target.closest("[data-add]");

      if (addButton) {

        const id = Number(addButton.dataset.add);

        const product = products.find(item => item.id === id);

        cart++;

        document.getElementById("cartCount").textContent = cart;

        showToast(`${product.name} added to cart`);
      }

      const heart = event.target.closest("[data-heart]");

      if (heart) {

        const id = Number(heart.dataset.heart);

        if (wishlist.has(id)) {
          wishlist.delete(id);
          showToast("Removed from wishlist");
        } else {
          wishlist.add(id);
          showToast("Added to wishlist");
        }

        document.getElementById("wishlistCount").textContent =
          wishlist.size;

        renderProducts();
      }

      const category = event.target.closest("[data-category]");

      if (category) {

        const name = category.dataset.category;

        searchTerm = name;

        document.getElementById("search").value = name;

        document.getElementById("shop")
          .scrollIntoView({ behavior: "smooth" });

        renderProducts();
      }
    });

    /* ================= SEARCH ================= */

    document.getElementById("search")
      .addEventListener("input", event => {

        searchTerm = event.target.value;

        renderProducts();
      });

    /* ================= SORT ================= */

    document.getElementById("sort")
      .addEventListener("change", renderProducts);

    /* ================= CART ================= */

    document.getElementById("cartButton")
      .addEventListener("click", () => {

        if (cart === 0) {
          showToast("Your cart is empty");
        } else {
          showToast(
            `You have ${cart} item${cart === 1 ? "" : "s"} in your cart`
          );
        }
      });

    /* ================= WISHLIST ================= */

    document.getElementById("wishlistButton")
      .addEventListener("click", () => {

        if (wishlist.size === 0) {
          showToast("Your wishlist is empty");
        } else {
          showToast(
            `${wishlist.size} item${wishlist.size === 1 ? "" : "s"} in your wishlist`
          );
        }
      });

    /* ================= NEWSLETTER ================= */

    document.getElementById("newsletter")
      .addEventListener("submit", event => {

        event.preventDefault();

        const email = document.getElementById("email").value.trim();

        if (!email) {
          showToast("Please enter your email");
          return;
        }

        showToast("You're subscribed successfully!");

        event.target.reset();
      });

    /* ================= MOBILE MENU ================= */

    document.getElementById("menuButton")
      .addEventListener("click", () => {

        const nav = document.querySelector("nav");

        if (nav.classList.contains("mobile-open")) {

          nav.classList.remove("mobile-open");

          nav.removeAttribute("style");

        } else {

          nav.classList.add("mobile-open");

          nav.style.display = "flex";
          nav.style.position = "absolute";
          nav.style.left = "0";
          nav.style.right = "0";
          nav.style.top = "68px";
          nav.style.padding = "20px";
          nav.style.margin = "0";
          nav.style.flexDirection = "column";
          nav.style.background = "white";
          nav.style.borderBottom = "1px solid #e4e4e7";
        }
      });

    /* ================= TOAST ================= */

    function showToast(message) {

      const toast = document.getElementById("toast");
      const text = document.getElementById("toastText");

      text.textContent = message;

      toast.classList.add("show");

      clearTimeout(window.toastTimeout);

      window.toastTimeout = setTimeout(() => {
        toast.classList.remove("show");
      }, 2500);
    }

    /* ================= YEAR ================= */

    document.getElementById("year").textContent =
      new Date().getFullYear();

    /* ================= START ================= */

    renderCategories();
    renderProducts();
  </script>

</body>
</html>

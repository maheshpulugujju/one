<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="NexusShop - Modern online shopping experience" />
  <title>NexusShop — Modern Shopping</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

  <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

  <style>
    :root {
      --primary: #111827;
      --secondary: #6366f1;
      --accent: #8b5cf6;
      --success: #16a34a;
      --danger: #ef4444;
      --muted: #6b7280;
      --light: #f8fafc;
      --border: #e5e7eb;
      --white: #ffffff;
      --shadow: 0 12px 35px rgba(15, 23, 42, .08);
      --radius: 20px;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: "Inter", sans-serif;
      background: #fff;
      color: var(--primary);
      line-height: 1.6;
    }

    button,
    input {
      font: inherit;
    }

    button {
      cursor: pointer;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    img {
      width: 100%;
      display: block;
    }

    .container {
      width: min(1180px, 92%);
      margin: auto;
    }

    /* ================= HEADER ================= */

    header {
      position: sticky;
      top: 0;
      z-index: 1000;
      background: rgba(255,255,255,.88);
      backdrop-filter: blur(18px);
      border-bottom: 1px solid rgba(229,231,235,.8);
    }

    .header-inner {
      min-height: 76px;
      display: flex;
      align-items: center;
      gap: 25px;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 10px;
      font-size: 22px;
      font-weight: 800;
      white-space: nowrap;
    }

    .logo-icon {
      width: 40px;
      height: 40px;
      border-radius: 12px;
      display: grid;
      place-items: center;
      color: white;
      background: linear-gradient(135deg, var(--secondary), var(--accent));
      box-shadow: 0 8px 20px rgba(99,102,241,.3);
    }

    nav {
      display: flex;
      align-items: center;
      gap: 24px;
      margin-left: auto;
    }

    nav a {
      color: #4b5563;
      font-size: 14px;
      font-weight: 600;
      transition: .2s;
    }

    nav a:hover {
      color: var(--secondary);
    }

    .header-search {
      width: 240px;
      position: relative;
    }

    .header-search input {
      width: 100%;
      border: 1px solid var(--border);
      background: #f8fafc;
      border-radius: 13px;
      padding: 11px 42px 11px 15px;
      outline: none;
      transition: .2s;
    }

    .header-search input:focus {
      background: white;
      border-color: var(--secondary);
      box-shadow: 0 0 0 4px rgba(99,102,241,.08);
    }

    .header-search i {
      position: absolute;
      right: 15px;
      top: 50%;
      transform: translateY(-50%);
      color: var(--muted);
    }

    .header-actions {
      display: flex;
      gap: 8px;
    }

    .icon-btn {
      width: 42px;
      height: 42px;
      border: 0;
      border-radius: 13px;
      background: #f8fafc;
      position: relative;
      transition: .2s;
    }

    .icon-btn:hover {
      background: #eef2ff;
      color: var(--secondary);
      transform: translateY(-2px);
    }

    .badge {
      position: absolute;
      top: -3px;
      right: -3px;
      min-width: 18px;
      height: 18px;
      padding: 0 4px;
      border-radius: 20px;
      background: var(--danger);
      color: white;
      font-size: 10px;
      display: grid;
      place-items: center;
      font-weight: 700;
    }

    .menu-btn {
      display: none;
    }

    /* ================= HERO ================= */

    .hero {
      min-height: 620px;
      display: flex;
      align-items: center;
      position: relative;
      overflow: hidden;
      color: white;
      background:
        linear-gradient(90deg, rgba(15,23,42,.95), rgba(15,23,42,.55), rgba(15,23,42,.15)),
        url("https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=1800&q=85")
        center/cover;
    }

    .hero::after {
      content: "";
      position: absolute;
      width: 450px;
      height: 450px;
      border-radius: 50%;
      background: rgba(99,102,241,.25);
      filter: blur(90px);
      right: -100px;
      top: -100px;
    }

    .hero-content {
      position: relative;
      z-index: 2;
      max-width: 650px;
    }

    .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 8px 14px;
      border: 1px solid rgba(255,255,255,.2);
      background: rgba(255,255,255,.1);
      backdrop-filter: blur(12px);
      border-radius: 30px;
      font-size: 13px;
      font-weight: 700;
      margin-bottom: 20px;
    }

    .hero h1 {
      font-size: clamp(42px, 6vw, 76px);
      line-height: 1.02;
      letter-spacing: -3px;
      margin-bottom: 22px;
    }

    .hero h1 span {
      color: #a5b4fc;
    }

    .hero p {
      max-width: 560px;
      color: #dbe4f0;
      font-size: 18px;
      margin-bottom: 30px;
    }

    .hero-buttons {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    .btn {
      border: 0;
      border-radius: 13px;
      padding: 13px 20px;
      font-weight: 700;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 9px;
      transition: .2s;
    }

    .btn-primary {
      background: white;
      color: #111827;
    }

    .btn-primary:hover {
      transform: translateY(-2px);
      box-shadow: 0 12px 25px rgba(0,0,0,.2);
    }

    .btn-dark {
      background: #111827;
      color: white;
    }

    .btn-dark:hover {
      background: #1f2937;
      transform: translateY(-2px);
    }

    .btn-outline {
      border: 1px solid var(--border);
      background: white;
      color: var(--primary);
    }

    .btn-outline:hover {
      border-color: var(--secondary);
      color: var(--secondary);
    }

    /* ================= FEATURES ================= */

    .features {
      margin-top: -45px;
      position: relative;
      z-index: 5;
    }

    .feature-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 15px;
    }

    .feature {
      background: white;
      border: 1px solid var(--border);
      box-shadow: var(--shadow);
      border-radius: 17px;
      padding: 20px;
      display: flex;
      gap: 14px;
      align-items: center;
    }

    .feature-icon {
      width: 46px;
      height: 46px;
      flex: 0 0 46px;
      border-radius: 14px;
      background: #eef2ff;
      color: var(--secondary);
      display: grid;
      place-items: center;
    }

    .feature h4 {
      font-size: 14px;
      margin-bottom: 2px;
    }

    .feature p {
      font-size: 12px;
      color: var(--muted);
    }

    /* ================= SECTION ================= */

    section {
      padding: 90px 0;
    }

    .section-head {
      display: flex;
      align-items: end;
      justify-content: space-between;
      gap: 20px;
      margin-bottom: 35px;
    }

    .section-head h2 {
      font-size: 34px;
      letter-spacing: -1px;
    }

    .section-head p {
      color: var(--muted);
      max-width: 500px;
    }

    /* ================= CATEGORIES ================= */

    .category-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 14px;
    }

    .category-card {
      position: relative;
      min-height: 180px;
      overflow: hidden;
      border-radius: 20px;
      color: white;
      cursor: pointer;
      background: #111827;
    }

    .category-card img {
      height: 100%;
      object-fit: cover;
      transition: .4s;
      opacity: .75;
    }

    .category-card:hover img {
      transform: scale(1.08);
      opacity: .9;
    }

    .category-card::after {
      content: "";
      position: absolute;
      inset: 0;
      background: linear-gradient(transparent 25%, rgba(0,0,0,.85));
    }

    .category-info {
      position: absolute;
      z-index: 2;
      left: 16px;
      bottom: 16px;
    }

    .category-info h3 {
      font-size: 15px;
      margin-bottom: 2px;
    }

    .category-info span {
      font-size: 11px;
      color: #d1d5db;
    }

    /* ================= SHOP ================= */

    .shop-layout {
      display: grid;
      grid-template-columns: 220px 1fr;
      gap: 35px;
    }

    .sidebar {
      position: sticky;
      top: 100px;
      height: fit-content;
    }

    .sidebar h3 {
      font-size: 16px;
      margin-bottom: 15px;
    }

    .category-filter {
      display: flex;
      flex-direction: column;
      gap: 5px;
    }

    .category-filter button {
      border: 0;
      background: transparent;
      text-align: left;
      padding: 10px 12px;
      border-radius: 10px;
      color: #64748b;
      font-weight: 600;
      transition: .2s;
    }

    .category-filter button:hover,
    .category-filter button.active {
      color: var(--secondary);
      background: #eef2ff;
    }

    .shop-top {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 22px;
      gap: 15px;
    }

    .filter-buttons {
      display: flex;
      gap: 7px;
      flex-wrap: wrap;
    }

    .filter-btn {
      border: 1px solid var(--border);
      background: white;
      padding: 9px 14px;
      border-radius: 10px;
      font-size: 13px;
      font-weight: 600;
    }

    .filter-btn.active,
    .filter-btn:hover {
      background: var(--primary);
      color: white;
      border-color: var(--primary);
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 20px;
    }

    .product-card {
      border: 1px solid var(--border);
      border-radius: 20px;
      overflow: hidden;
      background: white;
      transition: .25s;
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow);
    }

    .product-image {
      height: 245px;
      background: #f8fafc;
      position: relative;
      overflow: hidden;
    }

    .product-image img {
      height: 100%;
      object-fit: cover;
      transition: .4s;
    }

    .product-card:hover .product-image img {
      transform: scale(1.06);
    }

    .product-badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: #111827;
      color: white;
      padding: 6px 9px;
      border-radius: 8px;
      font-size: 10px;
      font-weight: 700;
    }

    .wishlist {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 36px;
      height: 36px;
      border: 0;
      border-radius: 50%;
      background: rgba(255,255,255,.92);
      display: grid;
      place-items: center;
      color: #475569;
      transition: .2s;
    }

    .wishlist:hover,
    .wishlist.active {
      color: var(--danger);
      transform: scale(1.08);
    }

    .product-body {
      padding: 18px;
    }

    .product-category {
      color: var(--secondary);
      font-size: 11px;
      text-transform: uppercase;
      font-weight: 800;
      letter-spacing: .7px;
    }

    .product-title {
      font-size: 16px;
      margin: 4px 0 8px;
      font-weight: 700;
    }

    .rating {
      display: flex;
      align-items: center;
      gap: 7px;
      font-size: 12px;
      margin-bottom: 12px;
    }

    .stars {
      color: #f59e0b;
    }

    .rating span {
      color: var(--muted);
    }

    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 10px;
    }

    .price strong {
      font-size: 19px;
    }

    .old-price {
      color: #9ca3af;
      font-size: 12px;
      text-decoration: line-through;
      margin-left: 5px;
    }

    .add-cart {
      width: 38px;
      height: 38px;
      border: 0;
      border-radius: 11px;
      color: white;
      background: var(--primary);
      transition: .2s;
    }

    .add-cart:hover {
      background: var(--secondary);
      transform: scale(1.06);
    }

    /* ================= DEAL ================= */

    .deal {
      background: #0f172a;
      color: white;
      border-radius: 28px;
      padding: 45px;
      overflow: hidden;
      position: relative;
    }

    .deal::before {
      content: "";
      position: absolute;
      width: 350px;
      height: 350px;
      border-radius: 50%;
      background: rgba(99,102,241,.3);
      filter: blur(70px);
      right: -80px;
      top: -100px;
    }

    .deal-content {
      position: relative;
      z-index: 2;
      display: grid;
      grid-template-columns: 1fr 1fr;
      align-items: center;
      gap: 40px;
    }

    .deal-label {
      color: #a5b4fc;
      text-transform: uppercase;
      font-size: 12px;
      font-weight: 800;
      letter-spacing: 1px;
    }

    .deal h2 {
      font-size: 42px;
      line-height: 1.1;
      margin: 10px 0 15px;
    }

    .deal p {
      color: #cbd5e1;
      margin-bottom: 20px;
    }

    .countdown {
      display: flex;
      gap: 9px;
      margin-bottom: 25px;
    }

    .time-box {
      min-width: 58px;
      padding: 10px 8px;
      text-align: center;
      border-radius: 12px;
      background: rgba(255,255,255,.09);
    }

    .time-box strong {
      display: block;
      font-size: 20px;
    }

    .time-box span {
      font-size: 9px;
      color: #94a3b8;
      text-transform: uppercase;
    }

    .deal-image {
      height: 330px;
      border-radius: 22px;
      overflow: hidden;
    }

    .deal-image img {
      height: 100%;
      object-fit: cover;
    }

    /* ================= REVIEWS ================= */

    .review-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 18px;
    }

    .review {
      padding: 25px;
      border: 1px solid var(--border);
      border-radius: 18px;
      background: #fff;
    }

    .review-stars {
      color: #f59e0b;
      margin-bottom: 14px;
    }

    .review p {
      color: #4b5563;
      font-size: 14px;
      margin-bottom: 20px;
    }

    .review-user {
      display: flex;
      align-items: center;
      gap: 11px;
    }

    .avatar {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      background: #eef2ff;
      color: var(--secondary);
      font-weight: 800;
    }

    .review-user strong {
      display: block;
      font-size: 13px;
    }

    .review-user span {
      font-size: 11px;
      color: var(--muted);
    }

    /* ================= NEWSLETTER ================= */

    .newsletter {
      padding: 55px;
      border-radius: 26px;
      background: linear-gradient(135deg, #eef2ff, #faf5ff);
      text-align: center;
    }

    .newsletter h2 {
      font-size: 34px;
      margin-bottom: 8px;
    }

    .newsletter p {
      color: var(--muted);
      margin-bottom: 22px;
    }

    .newsletter-form {
      max-width: 520px;
      margin: auto;
      display: flex;
      gap: 8px;
      background: white;
      padding: 6px;
      border: 1px solid var(--border);
      border-radius: 14px;
    }

    .newsletter-form input {
      flex: 1;
      min-width: 0;
      border: 0;
      outline: none;
      padding: 10px 12px;
    }

    /* ================= FOOTER ================= */

    footer {
      background: #0f172a;
      color: white;
      padding: 60px 0 25px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 50px;
    }

    .footer-brand p {
      max-width: 340px;
      color: #94a3b8;
      font-size: 14px;
      margin: 18px 0;
    }

    .socials {
      display: flex;
      gap: 8px;
    }

    .socials a {
      width: 38px;
      height: 38px;
      display: grid;
      place-items: center;
      background: rgba(255,255,255,.07);
      border-radius: 10px;
      color: #cbd5e1;
    }

    .socials a:hover {
      background: var(--secondary);
      color: white;
    }

    .footer-col h4 {
      font-size: 14px;
      margin-bottom: 15px;
    }

    .footer-col a {
      display: block;
      color: #94a3b8;
      font-size: 13px;
      margin: 9px 0;
    }

    .footer-col a:hover {
      color: white;
    }

    .copyright {
      border-top: 1px solid rgba(255,255,255,.08);
      margin-top: 45px;
      padding-top: 20px;
      color: #64748b;
      font-size: 12px;
      text-align: center;
    }

    /* ================= TOAST ================= */

    .toast {
      position: fixed;
      right: 20px;
      bottom: 20px;
      z-index: 2000;
      background: #111827;
      color: white;
      padding: 14px 17px;
      border-radius: 13px;
      box-shadow: 0 15px 40px rgba(0,0,0,.2);
      display: flex;
      align-items: center;
      gap: 10px;
      transform: translateY(100px);
      opacity: 0;
      pointer-events: none;
      transition: .3s;
      font-size: 13px;
    }

    .toast.show {
      transform: translateY(0);
      opacity: 1;
    }

    /* ================= EMPTY ================= */

    .empty-state {
      grid-column: 1 / -1;
      padding: 60px 20px;
      text-align: center;
      border: 1px dashed var(--border);
      border-radius: 20px;
      color: var(--muted);
    }

    .empty-state i {
      font-size: 35px;
      margin-bottom: 12px;
    }

    /* ================= RESPONSIVE ================= */

    @media (max-width: 1050px) {
      nav {
        display: none;
      }

      .header-search {
        margin-left: auto;
      }

      .feature-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .category-grid {
        grid-template-columns: repeat(3, 1fr);
      }

      .shop-layout {
        grid-template-columns: 1fr;
      }

      .sidebar {
        position: static;
      }

      .category-filter {
        flex-direction: row;
        flex-wrap: wrap;
      }

      .category-filter button {
        border: 1px solid var(--border);
      }
    }

    @media (max-width: 760px) {
      .header-inner {
        min-height: 68px;
        gap: 8px;
      }

      .header-search {
        display: none;
      }

      .logo {
        margin-right: auto;
      }

      .menu-btn {
        display: grid;
      }

      .hero {
        min-height: 570px;
      }

      .hero h1 {
        letter-spacing: -2px;
      }

      section {
        padding: 65px 0;
      }

      .section-head {
        display: block;
      }

      .section-head p {
        margin-top: 8px;
      }

      .category-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .product-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .product-image {
        height: 210px;
      }

      .deal {
        padding: 30px 20px;
      }

      .deal-content {
        grid-template-columns: 1fr;
      }

      .deal h2 {
        font-size: 34px;
      }

      .review-grid {
        grid-template-columns: 1fr;
      }

      .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 30px;
      }
    }

    @media (max-width: 500px) {
      .header-actions .wishlist-btn {
        display: none;
      }

      .feature-grid {
        grid-template-columns: 1fr;
      }

      .category-grid {
        grid-template-columns: 1fr 1fr;
      }

      .product-grid {
        grid-template-columns: 1fr;
      }

      .product-image {
        height: 270px;
      }

      .shop-top {
        display: block;
      }

      .filter-buttons {
        margin-top: 12px;
      }

      .newsletter {
        padding: 35px 18px;
      }

      .newsletter h2 {
        font-size: 27px;
      }

      .newsletter-form {
        flex-direction: column;
        background: transparent;
        border: 0;
      }

      .newsletter-form input {
        border: 1px solid var(--border);
        border-radius: 12px;
      }

      .footer-grid {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>

<body>

  <!-- HEADER -->
  <header>
    <div class="container header-inner">

      <a href="#" class="logo">
        <span class="logo-icon">
          <i class="fa-solid fa-bag-shopping"></i>
        </span>
        NexusShop
      </a>

      <nav>
        <a href="#home">Home</a>
        <a href="#categories">Categories</a>
        <a href="#shop">Shop</a>
        <a href="#deals">Deals</a>
        <a href="#reviews">Reviews</a>
      </nav>

      <div class="header-search">
        <input
          type="text"
          id="searchInput"
          placeholder="Search products..."
          autocomplete="off"
        />
        <i class="fa-solid fa-magnifying-glass"></i>
      </div>

      <div class="header-actions">
        <button class="icon-btn wishlist-btn" title="Wishlist">
          <i class="fa-regular fa-heart"></i>
          <span class="badge" id="wishlistCount">0</span>
        </button>

        <button class="icon-btn" title="Shopping Cart" id="cartButton">
          <i class="fa-solid fa-cart-shopping"></i>
          <span class="badge" id="cartCount">0</span>
        </button>

        <button class="icon-btn menu-btn" id="menuButton">
          <i class="fa-solid fa-bars"></i>
        </button>
      </div>

    </div>
  </header>

  <!-- HERO -->
  <main>

    <section class="hero" id="home">
      <div class="container">
        <div class="hero-content">

          <div class="eyebrow">
            <i class="fa-solid fa-sparkles"></i>
            New season is here
          </div>

          <h1>
            Everything you want.
            <span>One beautiful place.</span>
          </h1>

          <p>
            Discover premium technology, fashion, gadgets and everyday
            essentials — carefully selected for modern living.
          </p>

          <div class="hero-buttons">
            <a href="#shop" class="btn btn-primary">
              Shop now
              <i class="fa-solid fa-arrow-right"></i>
            </a>

            <a href="#categories" class="btn"
               style="background:rgba(255,255,255,.1);color:white;border:1px solid rgba(255,255,255,.25)">
              Explore categories
            </a>
          </div>

        </div>
      </div>
    </section>

    <!-- FEATURES -->
    <div class="features">
      <div class="container feature-grid">

        <div class="feature">
          <div class="feature-icon">
            <i class="fa-solid fa-truck-fast"></i>
          </div>
          <div>
            <h4>Free shipping</h4>
            <p>On orders over $50</p>
          </div>
        </div>

        <div class="feature">
          <div class="feature-icon">
            <i class="fa-solid fa-shield-halved"></i>
          </div>
          <div>
            <h4>Secure payment</h4>
            <p>100% protected checkout</p>
          </div>
        </div>

        <div class="feature">
          <div class="feature-icon">
            <i class="fa-solid fa-rotate-left"></i>
          </div>
          <div>
            <h4>Easy returns</h4>
            <p>30-day return policy</p>
          </div>
        </div>

        <div class="feature">
          <div class="feature-icon">
            <i class="fa-solid fa-headset"></i>
          </div>
          <div>
            <h4>24/7 support</h4>
            <p>We're always here</p>
          </div>
        </div>

      </div>
    </div>

    <!-- CATEGORIES -->
    <section id="categories">
      <div class="container">

        <div class="section-head">
          <div>
            <h2>Shop by category</h2>
            <p>Find exactly what you're looking for.</p>
          </div>
        </div>

        <div class="category-grid" id="categoryGrid"></div>

      </div>
    </section>

    <!-- SHOP -->
    <section id="shop" style="background:#f8fafc;">
      <div class="container">

        <div class="section-head">
          <div>
            <h2>Popular products</h2>
            <p>Hand-picked products customers are loving right now.</p>
          </div>
        </div>

        <div class="shop-layout">

          <aside class="sidebar">
            <h3>Categories</h3>

            <div class="category-filter">
              <button class="active" data-category="All">All products</button>
              <button data-category="Smartphones">Smartphones</button>
              <button data-category="Laptops">Laptops</button>
              <button data-category="Clothing">Clothing</button>
              <button data-category="Gadgets">Gadgets</button>
              <button data-category="Footwear">Footwear</button>
              <button data-category="Accessories">Accessories</button>
            </div>
          </aside>

          <div>

            <div class="shop-top">
              <strong id="productCount">8 products</strong>

              <div class="filter-buttons">
                <button class="filter-btn active" data-filter="all">All</button>
                <button class="filter-btn" data-filter="new">New</button>
                <button class="filter-btn" data-filter="sale">On sale</button>
                <button class="filter-btn" data-filter="rating">Top rated</button>
              </div>
            </div>

            <div class="product-grid" id="productGrid"></div>

          </div>
        </div>

      </div>
    </section>

    <!-- DEAL -->
    <section id="deals">
      <div class="container">

        <div class="deal">

          <div class="deal-content">

            <div>
              <div class="deal-label">Limited time offer</div>

              <h2>Upgrade your setup.</h2>

              <p>
                Save big on selected premium tech products before the deal
                disappears.
              </p>

              <div class="countdown">
                <div class="time-box">
                  <strong id="days">02</strong>
                  <span>Days</span>
                </div>

                <div class="time-box">
                  <strong id="hours">18</strong>
                  <span>Hours</span>
                </div>

                <div class="time-box">
                  <strong id="minutes">45</strong>
                  <span>Minutes</span>
                </div>

                <div class="time-box">
                  <strong id="seconds">20</strong>
                  <span>Seconds</span>
                </div>
              </div>

              <a href="#shop" class="btn btn-primary">
                Shop the deal
                <i class="fa-solid fa-arrow-right"></i>
              </a>
            </div>

            <div class="deal-image">
              <img
                src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85"
                alt="Premium laptop"
              >
            </div>

          </div>
        </div>

      </div>
    </section>

    <!-- REVIEWS -->
    <section id="reviews">
      <div class="container">

        <div class="section-head">
          <div>
            <h2>Loved by shoppers</h2>
            <p>Real experiences from the NexusShop community.</p>
          </div>
        </div>

        <div class="review-grid" id="reviewGrid"></div>

      </div>
    </section>

    <!-- NEWSLETTER -->
    <section>
      <div class="container">

        <div class="newsletter">
          <h2>Stay in the loop</h2>
          <p>
            Get new product drops, exclusive deals and useful shopping tips.
          </p>

          <form class="newsletter-form" id="newsletterForm">
            <input
              type="email"
              id="emailInput"
              placeholder="Enter your email address"
              required
            />

            <button class="btn btn-dark" type="submit">
              Subscribe
            </button>
          </form>
        </div>

      </div>
    </section>

  </main>

  <!-- FOOTER -->
  <footer>
    <div class="container">

      <div class="footer-grid">

        <div class="footer-brand">
          <a href="#" class="logo">
            <span class="logo-icon">
              <i class="fa-solid fa-bag-shopping"></i>
            </span>
            NexusShop
          </a>

          <p>
            A modern shopping experience built around quality products,
            simple discovery and excellent service.
          </p>

          <div class="socials">
            <a href="#"><i class="fa-brands fa-instagram"></i></a>
            <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
            <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
            <a href="#"><i class="fa-brands fa-pinterest-p"></i></a>
          </div>
        </div>

        <div class="footer-col">
          <h4>Shop</h4>
          <a href="#shop">All products</a>
          <a href="#shop">New arrivals</a>
          <a href="#shop">Best sellers</a>
          <a href="#deals">Deals</a>
        </div>

        <div class="footer-col">
          <h4>Help</h4>
          <a href="#">Shipping</a>
          <a href="#">Returns</a>
          <a href="#">FAQ</a>
          <a href="#">Contact us</a>
        </div>

        <div class="footer-col">
          <h4>Company</h4>
          <a href="#">About us</a>
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
    <span id="toastMessage">Added to cart</span>
  </div>

  <script>
    /* ================= DATA ================= */

    const categories = [
      {
        name: "Smartphones",
        count: "24 products",
        image: "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=700&q=80"
      },
      {
        name: "Laptops",
        count: "18 products",
        image: "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=700&q=80"
      },
      {
        name: "Clothing",
        count: "56 products",
        image: "https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=700&q=80"
      },
      {
        name: "Gadgets",
        count: "31 products",
        image: "https://images.unsplash.com/photo-1498049794561-7780e7231661?auto=format&fit=crop&w=700&q=80"
      },
      {
        name: "Footwear",
        count: "42 products",
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
      },
      {
        name: "Accessories",
        count: "37 products",
        image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80"
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
        tag: "Best seller",
        status: "sale",
        image: "https://images.unsplash.com/photo-1678685888221-cda773a3dcdb?auto=format&fit=crop&w=800&q=85"
      },
      {
        id: 2,
        name: "MacBook Pro 14\"",
        category: "Laptops",
        price: 1799,
        oldPrice: 1999,
        rating: 4.8,
        reviews: 94,
        tag: "Popular",
        status: "sale",
        image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=85"
      },
      {
        id: 3,
        name: "Apple Watch Series 8",
        category: "Gadgets",
        price: 349,
        oldPrice: 399,
        rating: 4.7,
        reviews: 82,
        tag: "New",
        status: "new",
        image: "https://images.unsplash.com/photo-1546868871-7041f2a55e3a?auto=format&fit=crop&w=800&q=85"
      },
      {
        id: 4,
        name: "Nike Air Max 270",
        category: "Footwear",
        price: 129,
        oldPrice: 159,
        rating: 4.6,
        reviews: 76,
        tag: "20% off",
        status: "sale",
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85"
      },
      {
        id: 5,
        name: "Sony A7 IV Camera",
        category: "Gadgets",
        price: 2499,
        oldPrice: null,
        rating: 4.9,
        reviews: 51,
        tag: "Top rated",
        status: "rating",
        image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=800&q=85"
      },
      {
        id: 6,
        name: "Premium Fragrance",
        category: "Accessories",
        price: 149,
        oldPrice: 179,
        rating: 4.5,
        reviews: 63,
        tag: "Sale",
        status: "sale",
        image: "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=800&q=85"
      },
      {
        id: 7,
        name: "Travel Backpack",
        category: "Accessories",
        price: 79,
        oldPrice: 99,
        rating: 4.7,
        reviews: 45,
        tag: "New",
        status: "new",
        image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85"
      },
      {
        id: 8,
        name: "Wireless Headphones",
        category: "Gadgets",
        price: 299,
        oldPrice: 349,
        rating: 4.9,
        reviews: 117,
        tag: "Best seller",
        status: "rating",
        image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85"
      }
    ];

    const reviews = [
      {
        name: "Ava Martin",
        text: "The whole experience feels incredibly clean and easy. My order arrived earlier than expected too.",
        initials: "AM"
      },
      {
        name: "Michael Lee",
        text: "I love how easy it is to find products here. The quality and prices have been excellent.",
        initials: "ML"
      },
      {
        name: "Sophia Chen",
        text: "Beautiful website, fast delivery and great customer service. Definitely shopping here again.",
        initials: "SC"
      },
      {
        name: "James Wilson",
        text: "The deals are actually useful and checkout was super smooth. Highly recommended.",
        initials: "JW"
      }
    ];

    /* ================= STATE ================= */

    let selectedCategory = "All";
    let selectedFilter = "all";
    let searchTerm = "";
    let cartCount = 0;
    let wishlist = new Set();

    /* ================= ELEMENTS ================= */

    const categoryGrid = document.getElementById("categoryGrid");
    const productGrid = document.getElementById("productGrid");
    const reviewGrid = document.getElementById("reviewGrid");
    const productCount = document.getElementById("productCount");
    const searchInput = document.getElementById("searchInput");
    const cartCountElement = document.getElementById("cartCount");
    const wishlistCountElement = document.getElementById("wishlistCount");
    const toast = document.getElementById("toast");
    const toastMessage = document.getElementById("toastMessage");

    /* ================= CATEGORY RENDER ================= */

    function renderCategories() {
      categoryGrid.innerHTML = categories.map(category => `
        <div class="category-card" data-category="${category.name}">
          <img src="${category.image}" alt="${category.name}">
          <div class="category-info">
            <h3>${category.name}</h3>
            <span>${category.count}</span>
          </div>
        </div>
      `).join("");
    }

    /* ================= PRODUCT FILTER ================= */

    function getFilteredProducts() {
      return products.filter(product => {

        const categoryMatch =
          selectedCategory === "All" ||
          product.category === selectedCategory;

        const searchMatch =
          product.name.toLowerCase().includes(searchTerm.toLowerCase()) ||
          product.category.toLowerCase().includes(searchTerm.toLowerCase());

        let filterMatch = true;

        if (selectedFilter === "new") {
          filterMatch = product.status === "new";
        }

        if (selectedFilter === "sale") {
          filterMatch = product.oldPrice !== null;
        }

        if (selectedFilter === "rating") {
          filterMatch = product.rating >= 4.8;
        }

        return categoryMatch && searchMatch && filterMatch;
      });
    }

    /* ================= PRODUCT RENDER ================= */

    function renderProducts() {
      const filteredProducts = getFilteredProducts();

      productCount.textContent =
        `${filteredProducts.length} product${filteredProducts.length !== 1 ? "s" : ""}`;

      if (!filteredProducts.length) {
        productGrid.innerHTML = `
          <div class="empty-state">
            <i class="fa-solid fa-box-open"></i>
            <h3>No products found</h3>
            <p>Try another category or search term.</p>
          </div>
        `;
        return;
      }

      productGrid.innerHTML = filteredProducts.map(product => {

        const liked = wishlist.has(product.id);

        return `
          <article class="product-card">

            <div class="product-image">

              <img
                src="${product.image}"
                alt="${product.name}"
                loading="lazy"
              >

              <span class="product-badge">
                ${product.tag}
              </span>

              <button
                class="wishlist ${liked ? "active" : ""}"
                data-wishlist="${product.id}"
                title="Add to wishlist"
              >
                <i class="${liked ? "fa-solid" : "fa-regular"} fa-heart"></i>
              </button>

            </div>

            <div class="product-body">

              <div class="product-category">
                ${product.category}
              </div>

              <h3 class="product-title">
                ${product.name}
              </h3>

              <div class="rating">
                <span class="stars">
                  ${"★".repeat(Math.round(product.rating))}
                </span>
                <span>
                  ${product.rating} (${product.reviews})
                </span>
              </div>

              <div class="price-row">

                <div class="price">
                  <strong>$${product.price.toLocaleString()}</strong>

                  ${
                    product.oldPrice
                      ? `<span class="old-price">$${product.oldPrice.toLocaleString()}</span>`
                      : ""
                  }
                </div>

                <button
                  class="add-cart"
                  data-cart="${product.id}"
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

    /* ================= REVIEWS ================= */

    function renderReviews() {
      reviewGrid.innerHTML = reviews.slice(0, 3).map(review => `
        <div class="review">

          <div class="review-stars">
            ★★★★★
          </div>

          <p>
            “${review.text}”
          </p>

          <div class="review-user">
            <div class="avatar">
              ${review.initials}
            </div>

            <div>
              <strong>${review.name}</strong>
              <span>Verified customer</span>
            </div>
          </div>

        </div>
      `).join("");
    }

    /* ================= TOAST ================= */

    function showToast(message) {
      toastMessage.textContent = message;
      toast.classList.add("show");

      clearTimeout(window.toastTimer);

      window.toastTimer = setTimeout(() => {
        toast.classList.remove("show");
      }, 2500);
    }

    /* ================= EVENTS ================= */

    document.addEventListener("click", event => {

      const categoryCard = event.target.closest(".category-card");

      if (categoryCard) {
        selectedCategory = categoryCard.dataset.category;

        document.querySelectorAll(".category-filter button")
          .forEach(button => {
            button.classList.toggle(
              "active",
              button.dataset.category === selectedCategory
            );
          });

        renderProducts();

        document.getElementById("shop").scrollIntoView({
          behavior: "smooth"
        });

        return;
      }

      const categoryButton = event.target.closest("[data-category]");

      if (
        categoryButton &&
        categoryButton.closest(".category-filter")
      ) {
        selectedCategory = categoryButton.dataset.category;

        document.querySelectorAll(".category-filter button")
          .forEach(button => {
            button.classList.toggle(
              "active",
              button.dataset.category === selectedCategory
            );
          });

        renderProducts();
        return;
      }

      const filterButton = event.target.closest(".filter-btn");

      if (filterButton) {
        selectedFilter = filterButton.dataset.filter;

        document.querySelectorAll(".filter-btn")
          .forEach(button => {
            button.classList.remove("active");
          });

        filterButton.classList.add("active");

        renderProducts();
        return;
      }

      const cartButton = event.target.closest("[data-cart]");

      if (cartButton) {
        const productId = Number(cartButton.dataset.cart);
        const product = products.find(item => item.id === productId);

        cartCount++;
        cartCountElement.textContent = cartCount;

        showToast(`${product.name} added to cart`);
        return;
      }

      const wishlistButton = event.target.closest("[data-wishlist]");

      if (wishlistButton) {
        const productId = Number(wishlistButton.dataset.wishlist);

        if (wishlist.has(productId)) {
          wishlist.delete(productId);
          showToast("Removed from wishlist");
        } else {
          wishlist.add(productId);
          showToast("Added to wishlist");
        }

        wishlistCountElement.textContent = wishlist.size;

        renderProducts();
      }
    });

    /* ================= SEARCH ================= */

    searchInput.addEventListener("input", event => {
      searchTerm = event.target.value;
      renderProducts();
    });

    /* ================= CART BUTTON ================= */

    document.getElementById("cartButton").addEventListener("click", () => {
      if (cartCount === 0) {
        showToast("Your cart is empty");
      } else {
        showToast(`You have ${cartCount} item${cartCount !== 1 ? "s" : ""} in your cart`);
      }
    });

    /* ================= NEWSLETTER ================= */

    document.getElementById("newsletterForm")
      .addEventListener("submit", event => {

        event.preventDefault();

        const email = document.getElementById("emailInput").value.trim();

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

        if (nav.style.display === "flex") {
          nav.style.display = "";
          return;
        }

        nav.style.display = "flex";
        nav.style.position = "absolute";
        nav.style.top = "68px";
        nav.style.left = "0";
        nav.style.right = "0";
        nav.style.padding = "20px";
        nav.style.background = "white";
        nav.style.flexDirection = "column";
        nav.style.alignItems = "flex-start";
        nav.style.borderBottom = "1px solid #e5e7eb";
      });

    /* ================= COUNTDOWN ================= */

    const dealEnd = new Date(Date.now() + 2 * 24 * 60 * 60 * 1000 + 18 * 60 * 60 * 1000);

    function updateCountdown() {

      const difference = dealEnd - new Date();

      if (difference <= 0) {
        document.getElementById("days").textContent = "00";
        document.getElementById("hours").textContent = "00";
        document.getElementById("minutes").textContent = "00";
        document.getElementById("seconds").textContent = "00";
        return;
      }

      const days = Math.floor(difference / 86400000);
      const hours = Math.floor((difference / 3600000) % 24);
      const minutes = Math.floor((difference / 60000) % 60);
      const seconds = Math.floor((difference / 1000) % 60);

      document.getElementById("days").textContent =
        String(days).padStart(2, "0");

      document.getElementById("hours").textContent =
        String(hours).padStart(2, "0");

      document.getElementById("minutes").textContent =
        String(minutes).padStart(2, "0");

      document.getElementById("seconds").textContent =
        String(seconds).padStart(2, "0");
    }

    setInterval(updateCountdown, 1000);
    updateCountdown();

    /* ================= YEAR ================= */

    document.getElementById("year").textContent =
      new Date().getFullYear();

    /* ================= INITIALIZE ================= */

    renderCategories();
    renderProducts();
    renderReviews();

  </script>

</body>
</html>

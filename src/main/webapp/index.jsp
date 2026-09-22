```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>NexusShop — Modern Store</title>

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
      --black: #0d0d0f;
      --dark: #17171a;
      --purple: #7c3aed;
      --purple-dark: #5b21b6;
      --purple-light: #f1edff;
      --white: #ffffff;
      --bg: #f6f6f4;
      --card: #ffffff;
      --text: #18181b;
      --muted: #77777f;
      --border: #e5e5e7;
      --green: #16a34a;
      --red: #ef4444;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: "Inter", sans-serif;
      background: var(--bg);
      color: var(--text);
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    button,
    input,
    select {
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
      width: min(1280px, 92%);
      margin: auto;
    }

    /* ================= TOP NOTICE ================= */

    .notice {
      background: var(--purple);
      color: white;
      padding: 10px;
      text-align: center;
      font-size: 11px;
      font-weight: 700;
      letter-spacing: .2px;
    }

    /* ================= HEADER ================= */

    header {
      background: rgba(255,255,255,.95);
      backdrop-filter: blur(15px);
      position: sticky;
      top: 0;
      z-index: 1000;
      border-bottom: 1px solid var(--border);
    }

    .header {
      height: 76px;
      display: flex;
      align-items: center;
      gap: 35px;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 10px;
      font-size: 21px;
      font-weight: 800;
      letter-spacing: -.8px;
      white-space: nowrap;
    }

    .logo-icon {
      width: 39px;
      height: 39px;
      border-radius: 12px;
      background: var(--black);
      color: white;
      display: grid;
      place-items: center;
    }

    nav {
      display: flex;
      gap: 25px;
    }

    nav a {
      color: #55555c;
      font-size: 12px;
      font-weight: 700;
    }

    nav a:hover {
      color: var(--purple);
    }

    .search-box {
      margin-left: auto;
      width: 300px;
      position: relative;
    }

    .search-box input {
      width: 100%;
      height: 43px;
      border: 1px solid var(--border);
      background: #f8f8f8;
      border-radius: 12px;
      padding: 0 42px 0 15px;
      outline: none;
      font-size: 12px;
    }

    .search-box input:focus {
      background: white;
      border-color: var(--purple);
    }

    .search-box i {
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

    .header-btn {
      width: 42px;
      height: 42px;
      border: 0;
      border-radius: 12px;
      background: #f3f3f4;
      position: relative;
    }

    .header-btn:hover {
      background: var(--purple-light);
      color: var(--purple);
    }

    .badge {
      position: absolute;
      right: -4px;
      top: -5px;
      min-width: 18px;
      height: 18px;
      border-radius: 50%;
      background: var(--red);
      color: white;
      font-size: 9px;
      display: grid;
      place-items: center;
      font-weight: 800;
    }

    .mobile-menu {
      display: none;
    }

    /* ================= HERO ================= */

    .hero {
      padding: 28px 0;
    }

    .hero-layout {
      min-height: 580px;
      display: grid;
      grid-template-columns: 1.05fr .95fr;
      border-radius: 28px;
      overflow: hidden;
      background: var(--black);
    }

    .hero-copy {
      padding: 75px 65px;
      color: white;
      display: flex;
      justify-content: center;
      flex-direction: column;
      position: relative;
    }

    .eyebrow {
      display: inline-flex;
      width: max-content;
      padding: 8px 12px;
      border-radius: 30px;
      background: rgba(255,255,255,.08);
      border: 1px solid rgba(255,255,255,.15);
      color: #c4b5fd;
      font-size: 10px;
      font-weight: 800;
      text-transform: uppercase;
      letter-spacing: 1px;
      margin-bottom: 22px;
    }

    .hero-copy h1 {
      max-width: 620px;
      font-size: clamp(48px, 6vw, 76px);
      line-height: .98;
      letter-spacing: -4px;
      margin-bottom: 24px;
    }

    .hero-copy h1 span {
      color: #a78bfa;
    }

    .hero-copy p {
      max-width: 520px;
      color: #a1a1aa;
      font-size: 14px;
      line-height: 1.8;
      margin-bottom: 30px;
    }

    .hero-buttons {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
    }

    .btn {
      border: 0;
      border-radius: 11px;
      padding: 14px 20px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 9px;
      font-size: 12px;
      font-weight: 800;
      transition: .25s;
    }

    .btn-purple {
      background: var(--purple);
      color: white;
    }

    .btn-purple:hover {
      background: #8b5cf6;
      transform: translateY(-2px);
    }

    .btn-white {
      background: white;
      color: #111;
    }

    .btn-white:hover {
      transform: translateY(-2px);
    }

    .hero-image {
      position: relative;
      overflow: hidden;
    }

    .hero-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .hero-product {
      position: absolute;
      bottom: 25px;
      right: 25px;
      background: white;
      color: #111;
      padding: 15px;
      border-radius: 15px;
      width: 190px;
      box-shadow: 0 20px 50px rgba(0,0,0,.3);
    }

    .hero-product small {
      color: var(--purple);
      font-size: 9px;
      font-weight: 800;
      text-transform: uppercase;
    }

    .hero-product strong {
      display: block;
      font-size: 14px;
      margin: 5px 0;
    }

    .hero-product span {
      font-size: 12px;
      font-weight: 800;
    }

    /* ================= QUICK CATEGORIES ================= */

    .quick-categories {
      padding: 35px 0 20px;
    }

    .quick-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 12px;
    }

    .quick-card {
      background: white;
      border: 1px solid var(--border);
      border-radius: 16px;
      padding: 22px 12px;
      text-align: center;
      transition: .25s;
    }

    .quick-card:hover {
      transform: translateY(-4px);
      border-color: #c4b5fd;
      box-shadow: 0 12px 30px rgba(0,0,0,.06);
    }

    .quick-icon {
      width: 48px;
      height: 48px;
      margin: auto auto 11px;
      border-radius: 14px;
      background: var(--purple-light);
      color: var(--purple);
      display: grid;
      place-items: center;
      font-size: 18px;
    }

    .quick-card strong {
      display: block;
      font-size: 11px;
    }

    .quick-card span {
      color: var(--muted);
      font-size: 9px;
    }

    /* ================= SECTION ================= */

    section {
      padding: 75px 0;
    }

    .section-head {
      display: flex;
      align-items: end;
      justify-content: space-between;
      margin-bottom: 30px;
    }

    .section-head h2 {
      font-size: 34px;
      letter-spacing: -1.5px;
    }

    .section-head p {
      margin-top: 5px;
      color: var(--muted);
      font-size: 12px;
    }

    .section-link {
      color: var(--purple);
      font-size: 12px;
      font-weight: 800;
    }

    /* ================= SHOP ================= */

    .shop-layout {
      display: grid;
      grid-template-columns: 220px 1fr;
      gap: 25px;
    }

    .sidebar {
      background: white;
      border: 1px solid var(--border);
      border-radius: 18px;
      padding: 20px;
      height: max-content;
      position: sticky;
      top: 100px;
    }

    .sidebar h3 {
      font-size: 12px;
      margin-bottom: 17px;
    }

    .side-filter {
      display: block;
      width: 100%;
      text-align: left;
      border: 0;
      background: transparent;
      padding: 10px;
      border-radius: 9px;
      color: #65656b;
      font-size: 11px;
      font-weight: 600;
    }

    .side-filter:hover,
    .side-filter.active {
      background: var(--purple-light);
      color: var(--purple);
      font-weight: 800;
    }

    .side-divider {
      border: 0;
      border-top: 1px solid var(--border);
      margin: 18px 0;
    }

    .price-label {
      display: flex;
      justify-content: space-between;
      font-size: 10px;
      color: var(--muted);
      margin-bottom: 8px;
    }

    .price-range {
      width: 100%;
      accent-color: var(--purple);
    }

    .products-area {
      min-width: 0;
    }

    .product-toolbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 18px;
      gap: 15px;
    }

    .results-count {
      color: var(--muted);
      font-size: 11px;
    }

    .sort {
      border: 1px solid var(--border);
      background: white;
      padding: 10px 13px;
      border-radius: 10px;
      outline: none;
      font-size: 11px;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 16px;
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
      box-shadow: 0 18px 35px rgba(0,0,0,.08);
    }

    .product-img {
      height: 260px;
      position: relative;
      overflow: hidden;
      background: #f1f1f2;
    }

    .product-img img {
      height: 100%;
      object-fit: cover;
      transition: .4s;
    }

    .product:hover .product-img img {
      transform: scale(1.06);
    }

    .product-tag {
      position: absolute;
      left: 12px;
      top: 12px;
      padding: 6px 8px;
      background: #111;
      color: white;
      border-radius: 6px;
      font-size: 8px;
      font-weight: 800;
    }

    .wishlist {
      position: absolute;
      top: 11px;
      right: 11px;
      width: 35px;
      height: 35px;
      border: 0;
      background: rgba(255,255,255,.94);
      border-radius: 50%;
      color: #555;
    }

    .wishlist.active {
      color: var(--red);
    }

    .product-info {
      padding: 16px;
    }

    .product-category {
      color: var(--purple);
      font-size: 8px;
      text-transform: uppercase;
      letter-spacing: 1px;
      font-weight: 800;
    }

    .product-name {
      font-size: 13px;
      margin: 5px 0 8px;
    }

    .product-rating {
      font-size: 10px;
      color: var(--muted);
      margin-bottom: 13px;
    }

    .stars {
      color: #f59e0b;
      letter-spacing: -2px;
      margin-right: 5px;
    }

    .price-row {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .price strong {
      font-size: 16px;
    }

    .old-price {
      color: #aaa;
      text-decoration: line-through;
      font-size: 9px;
      margin-left: 5px;
    }

    .add-cart {
      width: 37px;
      height: 37px;
      border: 0;
      border-radius: 10px;
      background: #111;
      color: white;
    }

    .add-cart:hover {
      background: var(--purple);
    }

    /* ================= FEATURE BANNER ================= */

    .feature {
      background: var(--black);
      border-radius: 25px;
      overflow: hidden;
      color: white;
      display: grid;
      grid-template-columns: 1fr 1fr;
      min-height: 390px;
    }

    .feature-copy {
      padding: 55px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .feature-copy small {
      color: #a78bfa;
      text-transform: uppercase;
      font-size: 9px;
      font-weight: 800;
      letter-spacing: 1.5px;
    }

    .feature-copy h2 {
      font-size: 43px;
      line-height: 1.05;
      letter-spacing: -2px;
      margin: 13px 0;
    }

    .feature-copy p {
      color: #a1a1aa;
      font-size: 12px;
      line-height: 1.7;
      max-width: 430px;
      margin-bottom: 22px;
    }

    .feature-image {
      min-height: 390px;
    }

    .feature-image img {
      height: 100%;
      object-fit: cover;
    }

    /* ================= EDITORIAL CARDS ================= */

    .editorial-grid {
      display: grid;
      grid-template-columns: 1.5fr 1fr 1fr;
      gap: 15px;
    }

    .editorial-card {
      min-height: 300px;
      position: relative;
      overflow: hidden;
      border-radius: 20px;
      color: white;
    }

    .editorial-card img {
      height: 100%;
      object-fit: cover;
      transition: .5s;
    }

    .editorial-card:hover img {
      transform: scale(1.06);
    }

    .editorial-card::after {
      content: "";
      position: absolute;
      inset: 0;
      background: linear-gradient(transparent 30%, rgba(0,0,0,.8));
    }

    .editorial-content {
      position: absolute;
      z-index: 2;
      bottom: 22px;
      left: 22px;
      right: 22px;
    }

    .editorial-content small {
      color: #c4b5fd;
      font-size: 9px;
      font-weight: 800;
      text-transform: uppercase;
    }

    .editorial-content h3 {
      font-size: 20px;
      margin-top: 5px;
    }

    /* ================= NEWSLETTER ================= */

    .newsletter {
      background: var(--purple-light);
      border-radius: 24px;
      padding: 60px 30px;
      text-align: center;
    }

    .newsletter h2 {
      font-size: 35px;
      letter-spacing: -1.5px;
      margin-bottom: 7px;
    }

    .newsletter p {
      color: var(--muted);
      font-size: 12px;
      margin-bottom: 23px;
    }

    .newsletter-form {
      display: flex;
      max-width: 480px;
      margin: auto;
      background: white;
      padding: 5px;
      border: 1px solid var(--border);
      border-radius: 12px;
    }

    .newsletter-form input {
      flex: 1;
      border: 0;
      outline: 0;
      padding: 11px;
      min-width: 0;
      font-size: 11px;
    }

    /* ================= FOOTER ================= */

    footer {
      background: var(--black);
      color: white;
      padding: 65px 0 25px;
    }

    .footer-top {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 50px;
    }

    .footer-brand p {
      max-width: 330px;
      color: #71717a;
      font-size: 11px;
      line-height: 1.8;
      margin: 18px 0;
    }

    .socials {
      display: flex;
      gap: 7px;
    }

    .socials a {
      width: 34px;
      height: 34px;
      border-radius: 9px;
      display: grid;
      place-items: center;
      background: #18181b;
      color: #a1a1aa;
    }

    .socials a:hover {
      background: var(--purple);
      color: white;
    }

    .footer-col h4 {
      font-size: 11px;
      margin-bottom: 17px;
    }

    .footer-col a {
      display: block;
      color: #71717a;
      font-size: 10px;
      margin: 10px 0;
    }

    .footer-col a:hover {
      color: white;
    }

    .copyright {
      border-top: 1px solid #27272a;
      margin-top: 45px;
      padding-top: 20px;
      text-align: center;
      color: #52525b;
      font-size: 9px;
    }

    /* ================= TOAST ================= */

    .toast {
      position: fixed;
      right: 20px;
      bottom: 20px;
      z-index: 9999;
      background: #111;
      color: white;
      padding: 14px 18px;
      border-radius: 11px;
      font-size: 11px;
      display: flex;
      align-items: center;
      gap: 9px;
      opacity: 0;
      transform: translateY(25px);
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

      .search-box {
        width: 230px;
      }

      .quick-grid {
        grid-template-columns: repeat(3, 1fr);
      }

      .product-grid {
        grid-template-columns: repeat(2, 1fr);
      }
    }

    @media(max-width: 760px) {

      .header {
        height: 68px;
        gap: 8px;
      }

      .search-box {
        display: none;
      }

      .mobile-menu {
        display: block;
      }

      .hero-layout {
        grid-template-columns: 1fr;
      }

      .hero-copy {
        padding: 55px 30px;
      }

      .hero-copy h1 {
        font-size: 48px;
      }

      .hero-image {
        height: 360px;
      }

      .shop-layout {
        grid-template-columns: 1fr;
      }

      .sidebar {
        position: static;
      }

      .feature {
        grid-template-columns: 1fr;
      }

      .feature-copy {
        padding: 40px 28px;
      }

      .feature-image {
        height: 300px;
        min-height: 0;
      }

      .editorial-grid {
        grid-template-columns: 1fr;
      }

      .footer-top {
        grid-template-columns: 1fr 1fr;
      }
    }

    @media(max-width: 500px) {

      .logo {
        font-size: 18px;
      }

      .logo-icon {
        width: 35px;
        height: 35px;
      }

      .header-btn {
        width: 38px;
        height: 38px;
      }

      .quick-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .product-grid {
        grid-template-columns: 1fr;
      }

      .product-img {
        height: 310px;
      }

      .section-head {
        display: block;
      }

      .section-link {
        display: inline-block;
        margin-top: 10px;
      }

      .product-toolbar {
        display: block;
      }

      .sort {
        margin-top: 10px;
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
        gap: 7px;
      }

      .newsletter-form input {
        background: white;
        border: 1px solid var(--border);
        border-radius: 10px;
      }

      .footer-top {
        grid-template-columns: 1fr;
        gap: 30px;
      }
    }
  </style>
</head>

<body>

  <!-- NOTICE -->
  <div class="notice">
    Free shipping over $50 · New customers save 15% today
  </div>

  <!-- HEADER -->
  <header>
    <div class="container header">

      <a href="#home" class="logo">
        <div class="logo-icon">
          <i class="fa-solid fa-bag-shopping"></i>
        </div>
        NexusShop
      </a>

      <nav id="nav">
        <a href="#home">Home</a>
        <a href="#shop">Shop</a>
        <a href="#collections">Collections</a>
        <a href="#deals">Deals</a>
        <a href="#about">About</a>
      </nav>

      <div class="search-box">
        <input
          id="search"
          type="text"
          placeholder="Search products..."
        >
        <i class="fa-solid fa-magnifying-glass"></i>
      </div>

      <div class="header-actions">

        <button class="header-btn" id="wishlistButton">
          <i class="fa-regular fa-heart"></i>
          <span class="badge" id="wishlistCount">0</span>
        </button>

        <button class="header-btn" id="cartButton">
          <i class="fa-solid fa-bag-shopping"></i>
          <span class="badge" id="cartCount">0</span>
        </button>

        <button class="header-btn mobile-menu" id="menuButton">
          <i class="fa-solid fa-bars"></i>
        </button>

      </div>

    </div>
  </header>


  <!-- HERO -->
  <main id="home">

    <section class="hero">
      <div class="container">

        <div class="hero-layout">

          <div class="hero-copy">

            <div class="eyebrow">
              <i class="fa-solid fa-sparkles"></i>
              New season collection
            </div>

            <h1>
              Everything
              <span>you need.</span>
            </h1>

            <p>
              A carefully selected collection of technology,
              fashion and everyday essentials designed for
              modern living.
            </p>

            <div class="hero-buttons">

              <a href="#shop" class="btn btn-purple">
                Explore products
                <i class="fa-solid fa-arrow-right"></i>
              </a>

              <a href="#collections" class="btn btn-white">
                View collections
              </a>

            </div>

          </div>

          <div class="hero-image">

            <img
              src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1200&q=90"
              alt="NexusShop store"
            >

            <div class="hero-product">
              <small>Trending now</small>
              <strong>Premium essentials</strong>
              <span>From $29</span>
            </div>

          </div>

        </div>

      </div>
    </section>


    <!-- QUICK CATEGORIES -->

    <section class="quick-categories" id="collections">
      <div class="container">

        <div class="quick-grid">

          <button class="quick-card" data-category="Smartphones">
            <div class="quick-icon">
              <i class="fa-solid fa-mobile-screen-button"></i>
            </div>
            <strong>Smartphones</strong>
            <span>24 products</span>
          </button>

          <button class="quick-card" data-category="Laptops">
            <div class="quick-icon">
              <i class="fa-solid fa-laptop"></i>
            </div>
            <strong>Laptops</strong>
            <span>18 products</span>
          </button>

          <button class="quick-card" data-category="Clothing">
            <div class="quick-icon">
              <i class="fa-solid fa-shirt"></i>
            </div>
            <strong>Clothing</strong>
            <span>56 products</span>
          </button>

          <button class="quick-card" data-category="Gadgets">
            <div class="quick-icon">
              <i class="fa-solid fa-headphones"></i>
            </div>
            <strong>Gadgets</strong>
            <span>31 products</span>
          </button>

          <button class="quick-card" data-category="Footwear">
            <div class="quick-icon">
              <i class="fa-solid fa-shoe-prints"></i>
            </div>
            <strong>Footwear</strong>
            <span>42 products</span>
          </button>

          <button class="quick-card" data-category="Accessories">
            <div class="quick-icon">
              <i class="fa-solid fa-watch"></i>
            </div>
            <strong>Accessories</strong>
            <span>37 products</span>
          </button>

        </div>

      </div>
    </section>


    <!-- SHOP -->

    <section id="shop">

      <div class="container">

        <div class="section-head">

          <div>
            <h2>Discover products</h2>
            <p>Fresh finds, customer favorites and everyday essentials.</p>
          </div>

          <a href="#shop" class="section-link">
            Browse all
            <i class="fa-solid fa-arrow-right"></i>
          </a>

        </div>


        <div class="shop-layout">

          <!-- SIDEBAR -->

          <aside class="sidebar">

            <h3>Categories</h3>

            <button class="side-filter active" data-filter="all">
              All products
            </button>

            <button class="side-filter" data-filter="new">
              New arrivals
            </button>

            <button class="side-filter" data-filter="sale">
              On sale
            </button>

            <button class="side-filter" data-filter="rating">
              Top rated
            </button>

            <hr class="side-divider">

            <h3>Maximum price</h3>

            <div class="price-label">
              <span>Budget</span>
              <span>$<span id="priceValue">2500</span></span>
            </div>

            <input
              class="price-range"
              id="priceRange"
              type="range"
              min="50"
              max="2500"
              value="2500"
            >

          </aside>


          <!-- PRODUCTS -->

          <div class="products-area">

            <div class="product-toolbar">

              <span class="results-count" id="resultsCount">
                Showing products
              </span>

              <select class="sort" id="sort">

                <option value="default">
                  Featured
                </option>

                <option value="low">
                  Price: Low to high
                </option>

                <option value="high">
                  Price: High to low
                </option>

                <option value="rating">
                  Highest rated
                </option>

              </select>

            </div>

            <div
              class="product-grid"
              id="productGrid"
            ></div>

          </div>

        </div>

      </div>

    </section>


    <!-- DEAL -->

    <section id="deals">

      <div class="container">

        <div class="feature">

          <div class="feature-copy">

            <small>Weekend exclusive</small>

            <h2>
              Upgrade
              your everyday.
            </h2>

            <p>
              Discover premium technology and lifestyle
              essentials with limited-time savings.
            </p>

            <div>
              <a href="#shop" class="btn btn-purple">
                Shop the offer
                <i class="fa-solid fa-arrow-right"></i>
              </a>
            </div>

          </div>

          <div class="feature-image">

            <img
              src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=1200&q=90"
              alt="Laptop promotion"
            >

          </div>

        </div>

      </div>

    </section>


    <!-- EDITORIAL -->

    <section>

      <div class="container">

        <div class="section-head">

          <div>
            <h2>Shop the mood</h2>
            <p>Curated collections for every part of your day.</p>
          </div>

        </div>

        <div class="editorial-grid">

          <article class="editorial-card">

            <img
              src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1000&q=90"
              alt="Accessories"
            >

            <div class="editorial-content">
              <small>Essentials</small>
              <h3>Small details. Big impact.</h3>
            </div>

          </article>

          <article class="editorial-card">

            <img
              src="https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=900&q=90"
              alt="Fashion"
            >

            <div class="editorial-content">
              <small>Style</small>
              <h3>Refresh your wardrobe.</h3>
            </div>

          </article>

          <article class="editorial-card">

            <img
              src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=90"
              alt="Headphones"
            >

            <div class="editorial-content">
              <small>Tech</small>
              <h3>Sound better every day.</h3>
            </div>

          </article>

        </div>

      </div>

    </section>


    <!-- NEWSLETTER -->

    <section>

      <div class="container">

        <div class="newsletter">

          <h2>Stay in the loop.</h2>

          <p>
            New products, private offers and useful shopping inspiration.
          </p>

          <form class="newsletter-form" id="newsletter">

            <input
              type="email"
              id="email"
              placeholder="Enter your email"
              required
            >

            <button class="btn btn-purple">
              Subscribe
            </button>

          </form>

        </div>

      </div>

    </section>

  </main>


  <!-- FOOTER -->

  <footer id="about">

    <div class="container">

      <div class="footer-top">

        <div class="footer-brand">

          <a href="#home" class="logo">

            <div class="logo-icon">
              <i class="fa-solid fa-bag-shopping"></i>
            </div>

            NexusShop

          </a>

          <p>
            Modern shopping for modern living.
            Discover products you'll love without
            unnecessary complexity.
          </p>

          <div class="socials">

            <a href="#">
              <i class="fa-brands fa-instagram"></i>
            </a>

            <a href="#">
              <i class="fa-brands fa-facebook-f"></i>
            </a>

            <a href="#">
              <i class="fa-brands fa-x-twitter"></i>
            </a>

            <a href="#">
              <i class="fa-brands fa-youtube"></i>
            </a>

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

          <h4>COMPANY</h4>

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

    <span id="toastText">
      Added to cart
    </span>

  </div>


  <script>

    /* ================= PRODUCTS ================= */

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


    /* ================= STATE ================= */

    let currentFilter = "all";
    let searchTerm = "";
    let cart = 0;
    let wishlist = new Set();


    const productGrid =
      document.getElementById("productGrid");


    /* ================= RENDER PRODUCTS ================= */

    function renderProducts() {

      const maxPrice =
        Number(document.getElementById("priceRange").value);

      let list = products.filter(product => {

        const search =
          product.name.toLowerCase().includes(
            searchTerm.toLowerCase()
          ) ||
          product.category.toLowerCase().includes(
            searchTerm.toLowerCase()
          );

        let filter = true;

        if (currentFilter === "new") {
          filter = product.type === "new";
        }

        if (currentFilter === "sale") {
          filter = product.oldPrice !== null;
        }

        if (currentFilter === "rating") {
          filter = product.rating >= 4.8;
        }

        return (
          search &&
          filter &&
          product.price <= maxPrice
        );

      });


      const sort =
        document.getElementById("sort").value;


      if (sort === "low") {
        list.sort((a,b) => a.price - b.price);
      }

      if (sort === "high") {
        list.sort((a,b) => b.price - a.price);
      }

      if (sort === "rating") {
        list.sort((a,b) => b.rating - a.rating);
      }


      document.getElementById("resultsCount")
        .textContent =
        `${list.length} product${list.length === 1 ? "" : "s"} found`;


      if (!list.length) {

        productGrid.innerHTML = `
          <div style="
            grid-column:1/-1;
            padding:70px 20px;
            text-align:center;
            color:#777;
          ">
            <i
              class="fa-solid fa-box-open"
              style="font-size:40px;margin-bottom:15px;"
            ></i>

            <h3 style="margin-bottom:7px;">
              No products found
            </h3>

            <p style="font-size:12px;">
              Try changing your search or filters.
            </p>
          </div>
        `;

        return;
      }


      productGrid.innerHTML = list.map(product => {

        const liked =
          wishlist.has(product.id);

        return `

          <article class="product">

            <div class="product-img">

              <img
                src="${product.image}"
                alt="${product.name}"
                loading="lazy"
              >

              <span class="product-tag">
                ${product.tag}
              </span>

              <button
                class="wishlist ${liked ? "active" : ""}"
                data-heart="${product.id}"
              >
                <i class="${
                  liked
                    ? "fa-solid"
                    : "fa-regular"
                } fa-heart"></i>
              </button>

            </div>


            <div class="product-info">

              <div class="product-category">
                ${product.category}
              </div>

              <h3 class="product-name">
                ${product.name}
              </h3>

              <div class="product-rating">

                <span class="stars">
                  ★★★★★
                </span>

                ${product.rating}
                ·
                ${product.reviews} reviews

              </div>


              <div class="price-row">

                <div class="price">

                  <strong>
                    $${product.price.toLocaleString()}
                  </strong>

                  ${
                    product.oldPrice
                      ? `
                        <span class="old-price">
                          $${product.oldPrice.toLocaleString()}
                        </span>
                      `
                      : ""
                  }

                </div>


                <button
                  class="add-cart"
                  data-add="${product.id}"
                >
                  <i class="fa-solid fa-plus"></i>
                </button>

              </div>

            </div>

          </article>

        `;

      }).join("");

    }


    /* ================= FILTERS ================= */

    document.addEventListener("click", event => {

      const filter =
        event.target.closest(".side-filter");

      if (filter) {

        document.querySelectorAll(".side-filter")
          .forEach(btn =>
            btn.classList.remove("active")
          );

        filter.classList.add("active");

        currentFilter =
          filter.dataset.filter;

        renderProducts();

      }


      const category =
        event.target.closest(".quick-card");

      if (category) {

        searchTerm =
          category.dataset.category;

        document.getElementById("search").value =
          searchTerm;

        document.getElementById("shop")
          .scrollIntoView({
            behavior: "smooth"
          });

        renderProducts();

      }


      const addButton =
        event.target.closest("[data-add]");

      if (addButton) {

        const id =
          Number(addButton.dataset.add);

        const product =
          products.find(item => item.id === id);

        cart++;

        document.getElementById("cartCount")
          .textContent = cart;

        showToast(
          `${product.name} added to cart`
        );

      }


      const heart =
        event.target.closest("[data-heart]");

      if (heart) {

        const id =
          Number(heart.dataset.heart);

        if (wishlist.has(id)) {

          wishlist.delete(id);

          showToast(
            "Removed from wishlist"
          );

        } else {

          wishlist.add(id);

          showToast(
            "Added to wishlist"
          );

        }

        document.getElementById("wishlistCount")
          .textContent = wishlist.size;

        renderProducts();

      }

    });


    /* ================= SEARCH ================= */

    document.getElementById("search")
      .addEventListener("input", event => {

        searchTerm =
          event.target.value;

        renderProducts();

      });


    /* ================= SORT ================= */

    document.getElementById("sort")
      .addEventListener(
        "change",
        renderProducts
      );


    /* ================= PRICE ================= */

    document.getElementById("priceRange")
      .addEventListener("input", event => {

        document.getElementById("priceValue")
          .textContent = event.target.value;

        renderProducts();

      });


    /* ================= CART ================= */

    document.getElementById("cartButton")
      .addEventListener("click", () => {

        if (cart === 0) {

          showToast(
            "Your cart is empty"
          );

        } else {

          showToast(
            `You have ${cart} item${
              cart === 1 ? "" : "s"
            } in your cart`
          );

        }

      });


    /* ================= WISHLIST ================= */

    document.getElementById("wishlistButton")
      .addEventListener("click", () => {

        if (!wishlist.size) {

          showToast(
            "Your wishlist is empty"
          );

        } else {

          showToast(
            `${wishlist.size} item${
              wishlist.size === 1 ? "" : "s"
            } in your wishlist`
          );

        }

      });


    /* ================= NEWSLETTER ================= */

    document.getElementById("newsletter")
      .addEventListener("submit", event => {

        event.preventDefault();

        const email =
          document.getElementById("email")
            .value.trim();

        if (!email) {

          showToast(
            "Please enter your email"
          );

          return;
        }

        showToast(
          "You're subscribed successfully!"
        );

        event.target.reset();

      });


    /* ================= MOBILE MENU ================= */

    document.getElementById("menuButton")
      .addEventListener("click", () => {

        const nav =
          document.getElementById("nav");

        if (nav.dataset.open === "true") {

          nav.dataset.open = "false";

          nav.removeAttribute("style");

        } else {

          nav.dataset.open = "true";

          nav.style.display = "flex";
          nav.style.position = "absolute";
          nav.style.top = "68px";
          nav.style.left = "0";
          nav.style.right = "0";
          nav.style.padding = "20px";
          nav.style.background = "white";
          nav.style.flexDirection = "column";
          nav.style.borderBottom =
            "1px solid #e5e5e7";
          nav.style.zIndex = "999";

        }

      });


    /* ================= TOAST ================= */

    function showToast(message) {

      const toast =
        document.getElementById("toast");

      const text =
        document.getElementById("toastText");

      text.textContent = message;

      toast.classList.add("show");

      clearTimeout(
        window.toastTimeout
      );

      window.toastTimeout =
        setTimeout(() => {

          toast.classList.remove("show");

        }, 2500);

    }


    /* ================= YEAR ================= */

    document.getElementById("year")
      .textContent =
      new Date().getFullYear();


    /* ================= START ================= */

    renderProducts();

  </script>

</body>
</html>
```

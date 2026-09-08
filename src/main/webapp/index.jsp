<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description" content="NexusShop — a simple, friendly modern shopping experience">
<title>NexusShop — Shop Simply</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root{
  --bg:#f7f8fa;
  --card:#fff;
  --ink:#18202b;
  --muted:#687385;
  --line:#e7eaf0;
  --accent:#e76f51;
  --accent-dark:#c9563b;
  --accent-soft:#fff0eb;
  --success:#208a78;
  --warning:#f2c14e;
  --radius:18px;
  --shadow:0 8px 30px rgba(24,32,43,.07);
  --shadow2:0 18px 50px rgba(24,32,43,.12);
  --max:1180px;
}

*{
  box-sizing:border-box;
  margin:0;
  padding:0;
}

html{
  scroll-behavior:smooth;
  scroll-padding-top:90px;
}

body{
  font-family:Inter,system-ui,sans-serif;
  background:var(--bg);
  color:var(--ink);
  line-height:1.55;
}

button,input{
  font:inherit;
}

button{
  cursor:pointer;
  border:0;
}

a{
  text-decoration:none;
  color:inherit;
}

img{
  display:block;
  max-width:100%;
}

.container{
  width:min(100% - 32px,var(--max));
  margin:auto;
}

.sr-only{
  position:absolute;
  width:1px;
  height:1px;
  padding:0;
  margin:-1px;
  overflow:hidden;
  clip:rect(0,0,0,0);
}

/* HEADER */

header{
  position:sticky;
  top:0;
  z-index:100;
  background:rgba(255,255,255,.94);
  backdrop-filter:blur(14px);
  border-bottom:1px solid var(--line);
}

.header-inner{
  min-height:72px;
  display:flex;
  align-items:center;
  gap:22px;
}

.brand{
  display:flex;
  align-items:center;
  gap:9px;
  font-weight:800;
  font-size:21px;
  white-space:nowrap;
}

.brand i,
.accent{
  color:var(--accent);
}

nav{
  margin-left:auto;
}

nav ul{
  display:flex;
  gap:4px;
  list-style:none;
}

nav a{
  display:block;
  padding:9px 12px;
  border-radius:10px;
  color:var(--muted);
  font-size:14px;
  font-weight:600;
}

nav a:hover,
nav a.active{
  background:#f0f2f5;
  color:var(--ink);
}

.header-tools{
  display:flex;
  align-items:center;
  gap:7px;
}

.search{
  width:220px;
  display:flex;
  align-items:center;
  gap:8px;
  background:#f1f3f6;
  border:2px solid transparent;
  border-radius:999px;
  padding:0 14px;
}

.search:focus-within{
  background:#fff;
  border-color:var(--accent);
}

.search input{
  width:100%;
  border:0;
  outline:0;
  background:transparent;
  padding:10px 0;
  font-size:14px;
}

.search button{
  color:var(--muted);
  background:transparent;
}

.icon-btn{
  position:relative;
  width:40px;
  height:40px;
  border-radius:50%;
  background:transparent;
  color:var(--muted);
}

.icon-btn:hover{
  background:#f0f2f5;
  color:var(--ink);
}

.cart-count{
  position:absolute;
  top:-1px;
  right:-1px;
  min-width:19px;
  height:19px;
  padding:0 5px;
  border-radius:999px;
  background:var(--accent);
  color:#fff;
  font-size:10px;
  font-weight:800;
  display:grid;
  place-items:center;
  border:2px solid #fff;
}

.menu-btn{
  display:none;
}

/* HERO */

.hero{
  margin:18px auto 0;
  min-height:440px;
  border-radius:24px;
  overflow:hidden;
  position:relative;
  background:#18202b url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85') center/cover;
}

.hero:after{
  content:"";
  position:absolute;
  inset:0;
  background:linear-gradient(
    90deg,
    rgba(13,18,27,.88),
    rgba(13,18,27,.48),
    rgba(13,18,27,.16)
  );
}

.hero-content{
  position:relative;
  z-index:1;
  max-width:650px;
  padding:76px 56px;
  color:#fff;
}

.eyebrow{
  display:inline-flex;
  align-items:center;
  gap:7px;
  background:rgba(231,111,81,.18);
  border:1px solid rgba(255,255,255,.14);
  padding:7px 13px;
  border-radius:999px;
  color:#ffd8ce;
  font-size:12px;
  font-weight:800;
  margin-bottom:18px;
}

.hero h1{
  font:700 clamp(36px,5vw,58px)/1.08 "Playfair Display",serif;
  letter-spacing:-1px;
  margin-bottom:16px;
}

.hero p{
  font-size:17px;
  max-width:560px;
  color:rgba(255,255,255,.83);
  margin-bottom:26px;
}

.actions{
  display:flex;
  flex-wrap:wrap;
  gap:10px;
}

.btn{
  display:inline-flex;
  align-items:center;
  justify-content:center;
  gap:8px;
  border-radius:999px;
  padding:12px 20px;
  font-weight:700;
  font-size:14px;
  transition:.2s;
}

.btn-primary{
  background:var(--accent);
  color:#fff;
}

.btn-primary:hover{
  background:var(--accent-dark);
  transform:translateY(-2px);
}

.btn-light{
  background:#fff;
  color:var(--ink);
}

.btn-light:hover{
  transform:translateY(-2px);
  box-shadow:0 8px 20px rgba(0,0,0,.15);
}

/* SECTIONS */

.section{
  padding:58px 0 0;
}

.section-head{
  display:flex;
  align-items:end;
  justify-content:space-between;
  gap:20px;
  margin-bottom:24px;
}

.section-head h2{
  font-size:28px;
  letter-spacing:-.5px;
}

.section-head p{
  color:var(--muted);
  font-size:14px;
  margin-top:3px;
}

.link{
  color:var(--accent);
  font-size:14px;
  font-weight:800;
}

.link:hover{
  color:var(--accent-dark);
}

/* CATEGORIES */

.categories{
  display:grid;
  grid-template-columns:repeat(6,1fr);
  gap:12px;
}

.cat{
  background:var(--card);
  border:1px solid var(--line);
  border-radius:var(--radius);
  padding:20px 12px;
  text-align:center;
  transition:.2s;
  cursor:pointer;
}

.cat:hover,
.cat.selected{
  border-color:#f3c4b7;
  box-shadow:var(--shadow);
  transform:translateY(-3px);
}

.cat-icon{
  width:52px;
  height:52px;
  margin:0 auto 10px;
  border-radius:50%;
  display:grid;
  place-items:center;
  background:var(--accent-soft);
  color:var(--accent);
  font-size:21px;
}

.cat h3{
  font-size:14px;
}

.cat small{
  display:block;
  color:var(--muted);
  margin-top:2px;
  font-size:12px;
}

/* PRODUCT TOOLBAR */

.toolbar{
  display:flex;
  justify-content:space-between;
  align-items:center;
  gap:12px;
  margin-bottom:18px;
}

.filters{
  display:flex;
  gap:8px;
  flex-wrap:wrap;
}

.filter{
  padding:8px 13px;
  border:1px solid var(--line);
  background:#fff;
  border-radius:999px;
  font-size:13px;
  font-weight:700;
  color:var(--muted);
}

.filter:hover,
.filter.active{
  background:var(--ink);
  border-color:var(--ink);
  color:#fff;
}

.result-count{
  font-size:13px;
  color:var(--muted);
}

/* PRODUCTS */

.products{
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:18px;
}

.product{
  background:#fff;
  border:1px solid var(--line);
  border-radius:var(--radius);
  overflow:hidden;
  display:flex;
  flex-direction:column;
  transition:.2s;
}

.product:hover{
  transform:translateY(-4px);
  box-shadow:var(--shadow2);
  border-color:#f0c9bf;
}

.product-image{
  aspect-ratio:1/1;
  position:relative;
  background:#eef0f3;
  overflow:hidden;
}

.product-image img{
  width:100%;
  height:100%;
  object-fit:cover;
  transition:.35s;
}

.product:hover .product-image img{
  transform:scale(1.045);
}

.badge{
  position:absolute;
  left:10px;
  top:10px;
  padding:5px 9px;
  border-radius:999px;
  background:var(--accent);
  color:#fff;
  font-size:10px;
  font-weight:800;
}

.badge.sale{
  background:var(--warning);
  color:var(--ink);
}

.wish{
  position:absolute;
  right:10px;
  top:10px;
  width:35px;
  height:35px;
  border-radius:50%;
  background:rgba(255,255,255,.94);
  color:var(--muted);
}

.wish:hover,
.wish.active{
  color:var(--accent);
}

.product-body{
  padding:15px 16px 10px;
  flex:1;
}

.category{
  font-size:10px;
  text-transform:uppercase;
  letter-spacing:.6px;
  color:#9aa3b0;
  font-weight:800;
}

.product h3{
  font-size:15px;
  line-height:1.35;
  margin:4px 0 9px;
}

.rating{
  color:#e9a522;
  font-size:12px;
}

.rating span{
  color:var(--muted);
  margin-left:4px;
}

.price-row{
  display:flex;
  align-items:center;
  gap:8px;
  margin-top:9px;
}

.price{
  font-size:18px;
  font-weight:800;
}

.old{
  font-size:13px;
  color:#9aa3b0;
  text-decoration:line-through;
}

.add{
  margin:0 16px 16px;
  width:calc(100% - 32px);
  padding:10px;
  border-radius:11px;
  background:var(--ink);
  color:#fff;
  font-weight:800;
  font-size:13px;
}

.add:hover{
  background:var(--accent);
}

.add.added{
  background:var(--success);
}

/* DEAL */

.deal{
  display:grid;
  grid-template-columns:1fr 1fr;
  background:#fff;
  border:1px solid var(--line);
  border-radius:var(--radius);
  overflow:hidden;
  box-shadow:var(--shadow);
}

.deal-image{
  min-height:330px;
}

.deal-image img{
  width:100%;
  height:100%;
  object-fit:cover;
}

.deal-content{
  padding:42px;
  display:flex;
  flex-direction:column;
  justify-content:center;
}

.deal-tag{
  align-self:flex-start;
  background:#fff2cc;
  color:#755600;
  padding:6px 11px;
  border-radius:999px;
  font-size:11px;
  font-weight:800;
  margin-bottom:13px;
}

.deal h2{
  font-size:30px;
  margin-bottom:7px;
}

.deal-desc{
  color:var(--muted);
  max-width:470px;
}

.deal-price{
  font-size:31px;
  font-weight:800;
  margin-top:15px;
}

.deal-price .old{
  font-size:18px;
  margin-left:7px;
}

.stock{
  font-size:13px;
  color:var(--muted);
  margin:5px 0 12px;
}

.stock strong{
  color:var(--accent);
}

.timer{
  display:flex;
  gap:9px;
  margin:8px 0 20px;
}

.time{
  min-width:62px;
  padding:9px;
  border-radius:10px;
  background:var(--ink);
  color:#fff;
  text-align:center;
}

.time b{
  display:block;
  font-size:21px;
}

.time small{
  font-size:9px;
  text-transform:uppercase;
  opacity:.65;
}

/* REVIEWS */

.reviews{
  display:flex;
  gap:16px;
  overflow-x:auto;
  padding:3px 2px 15px;
  scroll-snap-type:x mandatory;
}

.review{
  flex:0 0 320px;
  scroll-snap-align:start;
  background:#fff;
  border:1px solid var(--line);
  border-radius:var(--radius);
  padding:22px;
  box-shadow:var(--shadow);
}

.review .stars{
  color:#e9a522;
  margin-bottom:8px;
}

.review blockquote{
  font-size:14px;
  margin-bottom:16px;
}

.author{
  display:flex;
  align-items:center;
  gap:10px;
}

.avatar{
  width:40px;
  height:40px;
  border-radius:50%;
  object-fit:cover;
}

.author strong{
  font-size:13px;
}

.author small{
  display:block;
  color:var(--muted);
  font-size:11px;
}

/* NEWSLETTER */

.newsletter{
  margin-top:58px;
  border-radius:var(--radius);
  padding:35px 40px;
  background:var(--ink);
  color:#fff;
  display:flex;
  align-items:center;
  justify-content:space-between;
  gap:25px;
}

.newsletter h2{
  font-size:24px;
}

.newsletter p{
  opacity:.7;
  font-size:13px;
}

.news-form{
  display:flex;
  gap:8px;
  width:min(100%,450px);
}

.news-form input{
  flex:1;
  min-width:0;
  border:1px solid rgba(255,255,255,.15);
  background:rgba(255,255,255,.08);
  color:#fff;
  border-radius:999px;
  padding:12px 16px;
  outline:0;
}

.news-form input:focus{
  border-color:var(--accent);
}

.news-msg{
  font-size:12px;
  margin-top:7px;
}

/* FOOTER */

footer{
  margin-top:55px;
  border-top:1px solid var(--line);
  padding:38px 0 24px;
}

.footer-grid{
  display:grid;
  grid-template-columns:2fr 1fr 1fr 1fr;
  gap:35px;
}

.footer-brand p{
  max-width:300px;
  color:var(--muted);
  font-size:13px;
  margin-top:8px;
}

.footer-col h4{
  font-size:13px;
  margin-bottom:10px;
}

.footer-col a{
  display:block;
  color:var(--muted);
  font-size:13px;
  margin:6px 0;
}

.footer-col a:hover{
  color:var(--accent);
}

.socials{
  display:flex;
  gap:8px;
  margin-top:14px;
}

.socials a{
  width:35px;
  height:35px;
  border-radius:50%;
  display:grid;
  place-items:center;
  background:#eef0f3;
  color:var(--muted);
}

.socials a:hover{
  background:var(--accent);
  color:#fff;
}

.copyright{
  text-align:center;
  border-top:1px solid var(--line);
  margin-top:30px;
  padding-top:20px;
  color:#9aa3b0;
  font-size:12px;
}

/* TOAST */

.toast{
  position:fixed;
  left:50%;
  bottom:25px;
  transform:translate(-50%,20px);
  background:var(--ink);
  color:#fff;
  padding:12px 18px;
  border-radius:999px;
  font-size:13px;
  font-weight:700;
  opacity:0;
  pointer-events:none;
  transition:.25s;
  z-index:200;
  box-shadow:var(--shadow2);
}

.toast.show{
  opacity:1;
  transform:translate(-50%,0);
}

/* RESPONSIVE */

@media(max-width:1100px){
  .categories{
    grid-template-columns:repeat(3,1fr);
  }

  .products{
    grid-template-columns:repeat(3,1fr);
  }

  .footer-grid{
    grid-template-columns:1fr 1fr;
  }

  .search{
    width:180px;
  }
}

@media(max-width:900px){
  nav{
    display:none;
  }

  .menu-btn{
    display:block;
  }

  .header-inner{
    gap:10px;
  }

  .header-tools{
    margin-left:auto;
  }

  .hero-content{
    padding:60px 40px;
  }

  .deal{
    grid-template-columns:1fr;
  }

  .deal-image{
    min-height:260px;
  }

  .newsletter{
    flex-direction:column;
    align-items:stretch;
  }

  .news-form{
    width:100%;
  }
}

@media(max-width:700px){
  .container{
    width:min(100% - 24px,var(--max));
  }

  .search{
    display:none;
  }

  .hero{
    min-height:470px;
    border-radius:18px;
    margin-top:12px;
  }

  .hero-content{
    padding:55px 25px;
  }

  .hero h1{
    font-size:38px;
  }

  .hero p{
    font-size:15px;
  }

  .categories{
    grid-template-columns:repeat(2,1fr);
  }

  .products{
    grid-template-columns:repeat(2,1fr);
    gap:12px;
  }

  .section{
    padding-top:42px;
  }

  .section-head{
    align-items:flex-start;
    flex-direction:column;
  }

  .toolbar{
    align-items:flex-start;
    flex-direction:column;
  }

  .deal-content{
    padding:28px 22px;
  }

  .newsletter{
    padding:28px 22px;
  }

  .footer-grid{
    grid-template-columns:1fr 1fr;
    gap:25px;
  }
}

@media(max-width:480px){
  .brand{
    font-size:18px;
  }

  .brand i{
    font-size:19px;
  }

  .hero h1{
    font-size:32px;
  }

  .products{
    grid-template-columns:1fr;
  }

  .categories{
    grid-template-columns:repeat(2,1fr);
  }

  .footer-grid{
    grid-template-columns:1fr;
  }

  .news-form{
    flex-direction:column;
  }

  .news-form .btn{
    width:100%;
  }

  .timer{
    gap:6px;
  }

  .time{
    min-width:55px;
  }
}
</style>
</head>

<body>

<!-- HEADER -->
<header>
  <div class="container header-inner">

    <a class="brand" href="#">
      <i class="fas fa-bag-shopping"></i>
      Nexus<span class="accent">Shop</span>
    </a>

    <nav id="nav">
      <ul>
        <li><a class="active" href="#">Home</a></li>
        <li><a href="#categories">Categories</a></li>
        <li><a href="#products">Shop</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#reviews">Reviews</a></li>
      </ul>
    </nav>

    <div class="header-tools">

      <div class="search">
        <i class="fas fa-search"></i>
        <input
          id="searchInput"
          type="search"
          placeholder="Search products..."
          aria-label="Search products"
        >
        <button id="clearSearch" hidden aria-label="Clear search">
          <i class="fas fa-times"></i>
        </button>
      </div>

      <button class="icon-btn" id="wishlistBtn" aria-label="Wishlist">
        <i class="far fa-heart"></i>
      </button>

      <button class="icon-btn" id="cartBtn" aria-label="Shopping cart">
        <i class="fas fa-cart-shopping"></i>
        <span class="cart-count" id="cartCount">0</span>
      </button>

      <button class="icon-btn menu-btn" id="menuBtn" aria-label="Open menu">
        <i class="fas fa-bars"></i>
      </button>

    </div>
  </div>
</header>

<!-- HERO -->
<main>

<section class="hero container">
  <div class="hero-content">

    <div class="eyebrow">
      <i class="fas fa-sparkles"></i>
      Easy shopping starts here
    </div>

    <h1>Good products.<br>Simple shopping.</h1>

    <p>
      Discover useful everyday products, great deals, and customer favorites
      without the clutter.
    </p>

    <div class="actions">
      <button class="btn btn-primary" id="shopNow">
        Start Shopping
        <i class="fas fa-arrow-right"></i>
      </button>

      <button class="btn btn-light" id="exploreDeals">
        See Today's Deal
      </button>
    </div>

  </div>
</section>

<!-- CATEGORIES -->
<section class="section" id="categories">
  <div class="container">

    <div class="section-head">
      <div>
        <h2>Shop by category</h2>
        <p>Find what you need faster.</p>
      </div>
    </div>

    <div class="categories" id="categoriesGrid"></div>

  </div>
</section>

<!-- PRODUCTS -->
<section class="section" id="products">
  <div class="container">

    <div class="section-head">
      <div>
        <h2>Popular products</h2>
        <p>Simple choices, trusted favorites.</p>
      </div>
    </div>

    <div class="toolbar">

      <div class="filters">
        <button class="filter active" data-filter="all">All</button>
        <button class="filter" data-filter="new">New</button>
        <button class="filter" data-filter="sale">On sale</button>
        <button class="filter" data-filter="top">Top rated</button>
      </div>

      <div class="result-count" id="resultCount"></div>

    </div>

    <div class="products" id="productsGrid"></div>

  </div>
</section>

<!-- DEAL -->
<section class="section" id="deals">
  <div class="container">

    <div class="section-head">
      <div>
        <h2>Today's deal</h2>
        <p>A limited-time offer worth checking out.</p>
      </div>
    </div>

    <div class="deal">

      <div class="deal-image">
        <img
          src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=1000&q=85"
          alt="MacBook laptop"
          loading="lazy"
        >
      </div>

      <div class="deal-content">

        <span class="deal-tag">
          Limited time
        </span>

        <h2>MacBook Air M2</h2>

        <p class="deal-desc">
          Lightweight, fast, and ready for work, study, and everything
          in between.
        </p>

        <div class="deal-price">
          $899
          <span class="old">$1099</span>
        </div>

        <div class="stock">
          Only <strong>12 left</strong> at this price
        </div>

        <div class="timer">

          <div class="time">
            <b id="days">00</b>
            <small>Days</small>
          </div>

          <div class="time">
            <b id="hours">00</b>
            <small>Hours</small>
          </div>

          <div class="time">
            <b id="mins">00</b>
            <small>Min</small>
          </div>

          <div class="time">
            <b id="secs">00</b>
            <small>Sec</small>
          </div>

        </div>

        <button class="btn btn-primary" id="buyDeal">
          Add deal to cart
          <i class="fas fa-cart-plus"></i>
        </button>

      </div>
    </div>

  </div>
</section>

<!-- REVIEWS -->
<section class="section" id="reviews">
  <div class="container">

    <div class="section-head">
      <div>
        <h2>What shoppers say</h2>
        <p>Real feedback from our customers.</p>
      </div>
    </div>

    <div class="reviews" id="reviewsList"></div>

  </div>
</section>

<!-- NEWSLETTER -->
<section class="container">
  <div class="newsletter">

    <div>
      <h2>Get the good stuff.</h2>
      <p>Deals, new arrivals, and useful picks — no spam.</p>
      <div class="news-msg" id="newsMsg"></div>
    </div>

    <form class="news-form" id="newsletterForm">

      <label class="sr-only" for="email">
        Email address
      </label>

      <input
        id="email"
        type="email"
        placeholder="Your email address"
        autocomplete="email"
      >

      <button class="btn btn-primary" type="submit">
        Subscribe
      </button>

    </form>

  </div>
</section>

</main>

<!-- FOOTER -->
<footer>
  <div class="container">

    <div class="footer-grid">

      <div class="footer-brand">

        <a class="brand" href="#">
          <i class="fas fa-bag-shopping"></i>
          Nexus<span class="accent">Shop</span>
        </a>

        <p>
          A simple, friendly shopping experience with helpful search,
          filters and clear calls to action.
        </p>

        <div class="socials">

          <a href="#" aria-label="Facebook">
            <i class="fab fa-facebook-f"></i>
          </a>

          <a href="#" aria-label="Instagram">
            <i class="fab fa-instagram"></i>
          </a>

          <a href="#" aria-label="YouTube">
            <i class="fab fa-youtube"></i>
          </a>

        </div>

      </div>

      <div class="footer-col">
        <h4>Shop</h4>
        <a href="#categories">Categories</a>
        <a href="#products">Trending</a>
        <a href="#deals">Deals</a>
      </div>

      <div class="footer-col">
        <h4>Support</h4>
        <a href="#">Help Center</a>
        <a href="#">Shipping</a>
        <a href="#">Returns</a>
      </div>

      <div class="footer-col">
        <h4>Company</h4>
        <a href="#">About</a>
        <a href="#">Contact</a>
        <a href="#">Privacy</a>
      </div>

    </div>

    <div class="copyright">
      © <span id="year"></span> NexusShop. All rights reserved.
    </div>

  </div>
</footer>

<div class="toast" id="toast" role="status" aria-live="polite"></div>

<script>

const CATEGORIES = [
  {
    id:'phones',
    name:'Smartphones',
    icon:'fa-mobile-screen-button',
    count:24
  },
  {
    id:'laptops',
    name:'Laptops',
    icon:'fa-laptop',
    count:18
  },
  {
    id:'clothing',
    name:'Clothing',
    icon:'fa-shirt',
    count:42
  },
  {
    id:'gadgets',
    name:'Gadgets',
    icon:'fa-headphones',
    count:31
  },
  {
    id:'footwear',
    name:'Footwear',
    icon:'fa-shoe-prints',
    count:27
  },
  {
    id:'accessories',
    name:'Accessories',
    icon:'fa-watch',
    count:39
  }
];

const PRODUCTS = [
  {
    id:1,
    title:'iPhone 14 Pro Max',
    price:1099,
    oldPrice:1199,
    rating:5,
    reviews:128,
    badge:'New',
    img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85',
    category:'Smartphones'
  },
  {
    id:2,
    title:'MacBook Pro 14"',
    price:1999,
    rating:4,
    reviews:86,
    badge:'',
    img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85',
    category:'Laptops'
  },
  {
    id:3,
    title:'Apple Watch Series 8',
    price:349,
    oldPrice:399,
    rating:5,
    reviews:214,
    badge:'Sale',
    img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85',
    category:'Accessories'
  },
  {
    id:4,
    title:'Nike Air Max 270',
    price:150,
    rating:4,
    reviews:53,
    badge:'',
    img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85',
    category:'Footwear'
  },
  {
    id:5,
    title:'Sony A7 IV Camera',
    price:2499,
    rating:5,
    reviews:42,
    badge:'New',
    img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85',
    category:'Gadgets'
  },
  {
    id:6,
    title:'Chanel No. 5',
    price:120,
    rating:5,
    reviews:189,
    badge:'',
    img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85',
    category:'Accessories'
  },
  {
    id:7,
    title:'Travel Backpack',
    price:79,
    oldPrice:99,
    rating:4,
    reviews:67,
    badge:'Sale',
    img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85',
    category:'Accessories'
  },
  {
    id:8,
    title:'Sony WH-1000XM5',
    price:399,
    rating:5,
    reviews:156,
    badge:'',
    img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85',
    category:'Gadgets'
  }
];

const REVIEWS = [
  {
    name:'Ava Martin',
    role:'Verified Buyer',
    avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80',
    text:'Fast shipping and excellent support. The product exceeded my expectations!',
    stars:5
  },
  {
    name:'Michael Lee',
    role:'Frequent Shopper',
    avatar:'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80',
    text:'Great selection and smooth checkout. Will definitely shop again.',
    stars:4
  },
  {
    name:'Sophia Chen',
    role:'Designer',
    avatar:'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=100&q=80',
    text:'Love the quality and the packaging. Everything arrived in perfect condition.',
    stars:5
  },
  {
    name:'James Wilson',
    role:'Tech Enthusiast',
    avatar:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80',
    text:'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
    stars:5
  }
];

let cart = 0;
let activeFilter = 'all';
let activeCategory = 'all';
let wishlisted = new Set();

const $ = id => document.getElementById(id);

const money = n => '$' + n.toLocaleString();

function escapeHtml(v){
  return String(v).replace(
    /[&<>"']/g,
    s => ({
      '&':'&amp;',
      '<':'&lt;',
      '>':'&gt;',
      '"':'&quot;',
      "'":'&#39;'
    }[s])
  );
}

function toast(msg){

  const t = $('toast');

  t.textContent = msg;

  t.classList.add('show');

  clearTimeout(toast.timer);

  toast.timer = setTimeout(
    () => t.classList.remove('show'),
    2200
  );
}

function updateCart(){
  $('cartCount').textContent = cart;
}

function renderCategories(){

  $('categoriesGrid').innerHTML = CATEGORIES.map(c => `
    <button
      class="cat ${activeCategory === c.name ? 'selected' : ''}"
      data-cat="${c.name}"
    >
      <span class="cat-icon">
        <i class="fas ${c.icon}"></i>
      </span>

      <h3>${c.name}</h3>

      <small>${c.count} items</small>
    </button>
  `).join('');

  document.querySelectorAll('.cat').forEach(el => {

    el.onclick = () => {

      activeCategory = el.dataset.cat;

      activeFilter = 'all';

      document.querySelectorAll('.filter').forEach(
        x => x.classList.toggle(
          'active',
          x.dataset.filter === 'all'
        )
      );

      renderCategories();
      renderProducts();

      $('products').scrollIntoView({
        behavior:'smooth'
      });
    };

  });
}

function renderProducts(){

  let q = $('searchInput').value.trim().toLowerCase();

  let list = PRODUCTS.filter(p => {

    const search =
      !q ||
      p.title.toLowerCase().includes(q) ||
      p.category.toLowerCase().includes(q);

    const cat =
      activeCategory === 'all' ||
      p.category === activeCategory;

    const filter =
      activeFilter === 'all' ||
      (
        activeFilter === 'new' &&
        p.badge === 'New'
      ) ||
      (
        activeFilter === 'sale' &&
        p.badge === 'Sale'
      ) ||
      (
        activeFilter === 'top' &&
        p.rating >= 5
      );

    return search && cat && filter;

  });

  $('resultCount').textContent =
    `${list.length} product${list.length === 1 ? '' : 's'}`;

  $('productsGrid').innerHTML = list.length
    ? list.map(p => {

        const stars =
          '★'.repeat(p.rating) +
          '☆'.repeat(5 - p.rating);

        return `
          <article class="product">

            <div class="product-image">

              <img
                src="${p.img}"
                alt="${escapeHtml(p.title)}"
                loading="lazy"
              >

              ${
                p.badge
                ? `
                  <span class="badge ${p.badge === 'Sale' ? 'sale' : ''}">
                    ${p.badge}
                  </span>
                `
                : ''
              }

              <button
                class="wish ${wishlisted.has(p.id) ? 'active' : ''}"
                data-wish="${p.id}"
                aria-label="Toggle wishlist"
              >
                <i class="${wishlisted.has(p.id) ? 'fas' : 'far'} fa-heart"></i>
              </button>

            </div>

            <div class="product-body">

              <div class="category">
                ${escapeHtml(p.category)}
              </div>

              <h3>
                ${escapeHtml(p.title)}
              </h3>

              <div class="rating">
                ${stars}
                <span>(${p.reviews})</span>
              </div>

              <div class="price-row">

                <span class="price">
                  ${money(p.price)}
                </span>

                ${
                  p.oldPrice
                  ? `<span class="old">${money(p.oldPrice)}</span>`
                  : ''
                }

              </div>

            </div>

            <button class="add" data-id="${p.id}">
              <i class="fas fa-cart-plus"></i>
              Add to cart
            </button>

          </article>
        `;

      }).join('')

    : `
      <div
        style="
          grid-column:1/-1;
          text-align:center;
          padding:50px 20px;
          background:#fff;
          border:1px solid var(--line);
          border-radius:18px;
          color:var(--muted)
        "
      >

        <i
          class="fas fa-search"
          style="font-size:28px;margin-bottom:10px"
        ></i>

        <br>

        <strong style="color:var(--ink)">
          No products found
        </strong>

        <br>

        Try another search or filter.

      </div>
    `;

  document.querySelectorAll('.add').forEach(b => {

    b.onclick = () => {

      cart++;

      updateCart();

      b.classList.add('added');

      b.innerHTML =
        '<i class="fas fa-check"></i> Added';

      toast('Added to your cart');

      setTimeout(() => {

        b.classList.remove('added');

        b.innerHTML =
          '<i class="fas fa-cart-plus"></i> Add to cart';

      },1300);

    };

  });

  document.querySelectorAll('[data-wish]').forEach(b => {

    b.onclick = () => {

      let id = +b.dataset.wish;

      if(wishlisted.has(id)){
        wishlisted.delete(id);
      }else{
        wishlisted.add(id);
      }

      renderProducts();

      toast(
        wishlisted.has(id)
          ? 'Saved to wishlist'
          : 'Removed from wishlist'
      );

    };

  });

}

function renderReviews(){

  $('reviewsList').innerHTML =
    REVIEWS.map(r => `

      <article class="review">

        <div class="stars">
          ${'★'.repeat(r.stars)}
          ${'☆'.repeat(5-r.stars)}
        </div>

        <blockquote>
          “${escapeHtml(r.text)}”
        </blockquote>

        <div class="author">

          <img
            class="avatar"
            src="${r.avatar}"
            alt="${escapeHtml(r.name)}"
          >

          <div>
            <strong>${escapeHtml(r.name)}</strong>
            <small>${escapeHtml(r.role)}</small>
          </div>

        </div>

      </article>

    `).join('');

}

/* FILTERS */

document.querySelectorAll('.filter').forEach(b => {

  b.onclick = () => {

    activeFilter = b.dataset.filter;

    document.querySelectorAll('.filter').forEach(
      x => x.classList.toggle(
        'active',
        x === b
      )
    );

    renderProducts();

  };

});

/* SEARCH */

$('searchInput').addEventListener(
  'input',
  () => {

    $('clearSearch').hidden =
      !$('searchInput').value;

    renderProducts();

  }
);

$('clearSearch').onclick = () => {

  $('searchInput').value = '';

  $('clearSearch').hidden = true;

  renderProducts();

  $('searchInput').focus();

};

/* HERO BUTTONS */

$('shopNow').onclick = () =>
  $('products').scrollIntoView({
    behavior:'smooth'
  });

$('exploreDeals').onclick = () =>
  $('deals').scrollIntoView({
    behavior:'smooth'
  });

/* CART */

$('cartBtn').onclick = () =>
  toast(
    `Your cart has ${cart} item${cart === 1 ? '' : 's'}.`
  );

/* WISHLIST */

$('wishlistBtn').onclick = () =>
  toast(
    `${wishlisted.size} item${wishlisted.size === 1 ? '' : 's'} saved`
  );

/* MOBILE MENU */

$('menuBtn').onclick = () => {

  const nav = $('nav');

  const open =
    nav.style.display === 'block';

  nav.style.display =
    open ? '' : 'block';

  if(!open){

    nav.style.position = 'absolute';
    nav.style.top = '72px';
    nav.style.left = '12px';
    nav.style.right = '12px';
    nav.style.background = '#fff';
    nav.style.padding = '10px';
    nav.style.border = '1px solid var(--line)';
    nav.style.borderRadius = '14px';
    nav.style.boxShadow = 'var(--shadow)';

    nav.querySelector('ul').style.flexDirection =
      'column';

  }

};

/* NEWSLETTER */

$('newsletterForm').onsubmit = e => {

  e.preventDefault();

  const email =
    $('email').value.trim();

  if(
    !email ||
    !email.includes('@')
  ){

    $('newsMsg').textContent =
      'Please enter a valid email.';

    return;
  }

  $('newsMsg').textContent =
    'Thanks for subscribing! 🎉';

  $('email').value = '';

  setTimeout(
    () => $('newsMsg').textContent = '',
    3500
  );

};

/* DEAL */

$('buyDeal').onclick = () => {

  cart++;

  updateCart();

  toast('Deal added to your cart');

};

/* COUNTDOWN */

const end =
  Date.now() +
  ((24 * 60 + 36) * 60 * 1000);

function tick(){

  let d =
    Math.max(
      0,
      end - Date.now()
    );

  let days =
    Math.floor(d / 86400000);

  let h =
    Math.floor(
      d % 86400000 / 3600000
    );

  let m =
    Math.floor(
      d % 3600000 / 60000
    );

  let s =
    Math.floor(
      d % 60000 / 1000
    );

  $('days').textContent = days;

  $('hours').textContent =
    String(h).padStart(2,'0');

  $('mins').textContent =
    String(m).padStart(2,'0');

  $('secs').textContent =
    String(s).padStart(2,'0');

}

setInterval(tick,1000);

tick();

/* YEAR */

$('year').textContent =
  new Date().getFullYear();

/* INITIAL RENDER */

renderCategories();
renderProducts();
renderReviews();
updateCart();

</script>

</body>
</html>

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
      width: 48px
```

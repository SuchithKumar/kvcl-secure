<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arya Vysyas State Level Cricket Tournament</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="container">
            <img src="logo.png" alt="Tournament Logo" class="logo">
            <nav>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#teams">Teams</a></li>
                    <li><a href="#schedule">Schedule</a></li>
                    <li><a href="#news">News</a></li>
                    <li><a href="#gallery">Gallery</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="container">
            <h1>Arya Vysyas State Level Cricket Tournament</h1>
            <p>Join us for an exciting tournament from [Dates] at [Venue]</p>
            <a href="#registration" class="btn">Register Now</a>
            <a href="#tickets" class="btn">Buy Tickets</a>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="about">
        <div class="container">
            <h2>About the Tournament</h2>
            <p>A brief description of the tournament, its history, and its significance...</p>
        </div>
    </section>

    <!-- Teams and Players Section -->
    <section id="teams" class="teams">
        <div class="container">
            <h2>Participating Teams</h2>
            <div class="team-list">
                <!-- Repeat this block for each team -->
                <div class="team">
                    <img src="team-logo.png" alt="Team Logo">
                    <h3>Team Name</h3>
                    <p>Brief info about the team...</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Schedule and Fixtures Section -->
    <section id="schedule" class="schedule">
        <div class="container">
            <h2>Match Schedule</h2>
            <p>Upcoming matches, dates, times, and venues...</p>
        </div>
    </section>

    <!-- News and Updates Section -->
    <section id="news" class="news">
        <div class="container">
            <h2>Latest News</h2>
            <div class="news-list">
                <!-- Repeat this block for each news item -->
                <div class="news-item">
                    <h3>News Title</h3>
                    <p>Summary of the news...</p>
                    <a href="news-link">Read more</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Sponsors and Partners Section -->
    <section id="sponsors" class="sponsors">
        <div class="container">
            <h2>Our Sponsors</h2>
            <div class="sponsor-list">
                <!-- Repeat this block for each sponsor -->
                <div class="sponsor">
                    <img src="sponsor-logo.png" alt="Sponsor Logo">
                </div>
            </div>
        </div>
    </section>

    <!-- Registration and Tickets Section -->
    <section id="registration" class="registration">
        <div class="container">
            <h2>Register for the Tournament</h2>
            <a href="registration-link" class="btn">Register Now</a>
        </div>
    </section>

    <section id="tickets" class="tickets">
        <div class="container">
            <h2>Buy Tickets</h2>
            <a href="tickets-link" class="btn">Buy Tickets</a>
        </div>
    </section>

    <!-- Gallery Section -->
    <section id="gallery" class="gallery">
        <div class="container">
            <h2>Gallery</h2>
            <div class="gallery-list">
                <!-- Repeat this block for each gallery item -->
                <div class="gallery-item">
                    <img src="gallery-image.jpg" alt="Gallery Image">
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="contact">
        <div class="container">
            <h2>Contact Us</h2>
            <form action="contact-form-handler" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <label for="message">Message:</label>
                <textarea id="message" name="message" required></textarea>
                <button type="submit" class="btn">Send Message</button>
            </form>
        </div>
    </section>

    <!-- Footer Section -->
    <footer>
        <div class="container">
            <p>&copy; 2024 Arya Vysyas State Level Cricket Tournament. All rights reserved.</p>
            <div class="social-links">
                <a href="facebook-link"><img src="facebook-icon.png" alt="Facebook"></a>
                <a href="twitter-link"><img src="twitter-icon.png" alt="Twitter"></a>
                <a href="instagram-link"><img src="instagram-icon.png" alt="Instagram"></a>
            </div>
        </div>
    </footer>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
        }
        header {
            background: #333;
            color: #fff;
            padding: 1rem 0;
        }
        header .logo {
            width: 100px;
        }
        nav ul {
            list-style: none;
            display: flex;
            justify-content: space-around;
            padding: 0;
        }
        nav ul li {
            display: inline;
        }
        nav ul li a {
            color: #fff;
            text-decoration: none;
            padding: 0.5rem;
        }
        .hero {
            background: url('hero-image.jpg') no-repeat center center/cover;
            color: #fff;
            text-align: center;
            padding: 2rem 0;
        }
        .hero h1 {
            font-size: 2.5rem;
            margin: 0.5rem 0;
        }
        .hero p {
            font-size: 1.25rem;
        }
        .btn {
            background: #007bff;
            color: #fff;
            padding: 0.75rem 1.5rem;
            text-decoration: none;
            border-radius: 5px;
            margin: 0.5rem;
        }
        section {
            padding: 2rem 0;
        }
        section h2 {
            text-align: center;
            margin-bottom: 1rem;
        }
        .team-list, .news-list, .sponsor-list, .gallery-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .team, .news-item, .sponsor, .gallery-item {
            margin: 1rem;
            text-align: center;
        }
        .team img, .sponsor img, .gallery-item img {
            width: 100px;
        }
        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 1rem 0;
        }
        .social-links img {
            width: 30px;
            margin: 0 0.5rem;
        }
    </style>
</body>
</html>

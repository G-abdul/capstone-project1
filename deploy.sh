#!/bin/bash

# Exit on any error
set -e

echo "🔧 Updating system packages..."
sudo apt update -y
sudo apt upgrade -y

echo "🌐 Installing NGINX web server..."

# Exit if any command fails
set -e

echo "Updating system..."

echo "Installing NGINX..."
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

echo "🧹 Cleaning default web directory..."
WEBROOT="/var/www/html"
sudo rm -f $WEBROOT/index.html $WEBROOT/style.css $WEBROOT/script.js

echo "📄 Creating index.html..."

echo "Creating website files..."

# Define web root
WEBROOT="/var/www/html"

# Clear existing files
sudo rm -f $WEBROOT/index.html $WEBROOT/style.css $WEBROOT/script.js

# Write index.html
sudo tee $WEBROOT/index.html > /dev/null << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Abdul Ganiyu | Cloud Capstone</title>
  <link rel="stylesheet" href="style.css">
  <script src="script.js" defer></script>
</head>
<body>

  <header>
    <h1>Hi, I'm Abdul Ganiyu</h1>
    <p>Aspiring Cloud Engineer | Techcrush Scholar | AWS, AZURE & Linux Enthusiast</p>
    <nav>
      <a href="#about">About</a>
      <a href="#project">Project</a>
      <a href="#skills">Skills</a>
      <a href="#contact">Contact</a>
    </nav>
  </header>

  <div class="container">
    <section id="about">
      <h2>About Me</h2>
      <p>
        I'm a passionate Cloud Computing student currently completing my capstone project as a Techcrush scholarship beneficiary.
        My journey into the cloud started with curiosity and has evolved into real-world skills through this bootcamp. I’m focused on learning how cloud infrastructure works, how to automate deployments, and how to build secure and scalable systems.
      </p>
    </section>

    <section id="project">
      <h2>Capstone Project</h2>
      <p><strong>Title:</strong> Deploying a Static Website on AWS EC2 Using GitHub Actions & NGINX</p>
      <p>This project showcases the process of hosting a static website on an EC2 instance with automated deployment. Here's what it involved:</p>
      <ul>
        <li>Provisioned an Ubuntu EC2 instance on AWS</li>
        <li>Configured NGINX to serve static web content</li>
        <li>Set up SSH key-based authentication</li>
        <li>Wrote a GitHub Actions workflow to auto-deploy updates via SCP & SSH</li>
        <li>Used a .pem key securely stored as a GitHub secret</li>
      </ul>
    </section>

    <section id="skills">
      <h2>Skills & Tools</h2>
      <ul>
        <li>AWS EC2, NGINX, IAM</li>
        <li>Git & GitHub</li>
        <li>GitHub Actions (CI/CD)</li>
        <li>Linux Command Line & Bash</li>
        <li>HTML5 & CSS3</li>
        <li>SSH & Secure Key Management</li>
      </ul>
    </section>

    <section id="thanks" style="text-align: center; margin-top: 40px;">
      <h2 style="color: #007acc;">Thank You</h2>
      <p>
        Thank you for taking the time to view my Capstone Project.<br>
        I hope it inspires your interest in cloud computing and showcases my growth through the Techcrush Bootcamp.
      </p>
    </section>

    <section id="contact">
      <h2>Contact</h2>
      <p>Email: <a href="mailto:alisumaila.1000@gmail.com">alisumaila.1000@gmail.com</a></p>
      <p>LinkedIn: <a href="https://www.linkedin.com/in/abdul~ganiyu" target="_blank">Abdul Ganiyu</a></p>
      <p>GitHub: <a href="https://github.com/G-abdul/Capstone-Project1" target="_blank">github.com/G-abdul/Capstone-Project</a></p>
    </section>
  </div>

  <footer>
    <p>&copy; 2025 Abdul Ganiyu | Techcrush Cloud Capstone Project | #TechCrushGraduate</p>
  </footer>

</body>
</html>
EOF


echo "🎨 Creating style.css..."
# Write style.css


sudo tee $WEBROOT/style.css > /dev/null << 'EOF'
body {
  font-family: Arial, sans-serif;
  line-height: 1.6;
  margin: 0;
  padding: 0;
  background-color: #f4f4f4;
  color: #333;
}
header {
  background: #007acc;
  color: #fff;
  padding: 20px 0;
  text-align: center;
}
nav a {
  color: #fff;
  margin: 0 15px;
  text-decoration: none;
}
.container {
  max-width: 1000px;
  margin: 30px auto;
  padding: 20px;
  background: #fff;
  border-radius: 8px;
}
h1, h2 {
  color: #007acc;
}
ul {
  list-style-type: square;
  padding-left: 20px;
}
footer {
  text-align: center;
  padding: 15px;
  background: #eee;
  margin-top: 30px;
}
a {
  color: #007acc;
}
EOF


echo "✨ Creating script.js..."

# Write script.js

sudo tee $WEBROOT/script.js > /dev/null << 'EOF'
document.addEventListener("DOMContentLoaded", () => {
  console.log("Welcome to Abdul Ganiyu's Cloud Capstone Website!");
  alert("Thank you for visiting my Capstone Project!");
});
EOF


echo "✅ Deployment Complete!"
echo "🌐 Visit your website: http://13.51.163.195"


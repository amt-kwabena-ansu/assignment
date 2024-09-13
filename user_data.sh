#!/bin/bash

# Update package repository
sudo yum update -y

# Install Apache HTTP Server
sudo yum install -y httpd

# Start the Apache service
sudo systemctl start httpd

# Enable the Apache service to start on boot
sudo systemctl enable httpd

# Create an HTML file in the default Apache web directory
echo "<html>
  <head>
    <title>Hello Page</title>
  </head>
  <body>
    <h1>Hello this is Kwabena</h1>
  </body>
</html>" > /var/www/html/index.html

# Restart Apache to ensure it serves the new page
sudo systemctl restart httpd

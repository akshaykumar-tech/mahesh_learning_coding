To deploy your Ruby on Rails application to an AWS EC2 instance, you'll need to follow these general steps. Please note that this is a high-level overview, and there may be additional details and configurations needed based on your application's specific requirements.

Prepare Your EC2 Instance:

Log in to your AWS Management Console.
Launch an EC2 instance using the AMI you mentioned (Ubuntu 22.04).
Ensure that the security group associated with the instance allows incoming traffic on port 22 (SSH) and any other necessary ports for your Rails application (e.g., port 80 for HTTP).
Associate an Elastic IP address with your EC2 instance if you want a static public IP.
SSH Into Your EC2 Instance:

You can use the .pem key you have to SSH into your EC2 instance. Open a terminal on your local machine and use the following command:

bash
Copy code
ssh -i /home/dev/Downloads/demoapp.pem ubuntu@<your-ec2-public-ip>
Update and Install Dependencies:

Once you are connected to your EC2 instance, update the package list and install necessary dependencies:

bash
Copy code
sudo apt update
sudo apt upgrade
sudo apt install -y git curl libcurl4-openssl-dev libssl-dev libreadline-dev zlib1g-dev build-essential libsqlite3-dev nodejs
Install Rbenv and Ruby:

You can use rbenv to manage Ruby versions. Here's how you can install it and a specific version of Ruby:

bash
Copy code
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install <your-ruby-version>  # Replace with the Ruby version you need
rbenv global <your-ruby-version>    # Set it as the default version
Install Rails:

Install the Rails gem:

bash
Copy code
gem install rails
Clone Your Repository:

Clone your Rails application repository from GitHub onto your EC2 instance. Navigate to your desired directory and run:

bash
Copy code
git clone https://github.com/akshaykumar-tech/mahesh_learning_coding.git
Configure Your Application:

Go to the application's directory and configure your Rails application as you would on your local machine. This includes setting up your database, configuring environment variables (e.g., for database credentials), and running any necessary migrations:

bash
Copy code
cd mahesh_learning_coding
bundle install
rake db:migrate
Start Your Rails Server:

You can start your Rails application using the following command:

bash
Copy code
rails server -b 0.0.0.0
The -b 0.0.0.0 flag allows external connections to your Rails server.

Configure Your Web Server (Optional):

If you want to use a web server like Nginx or Apache to proxy requests to your Rails application, you will need to install and configure it. This step is optional but recommended for production deployments.

Configure Domain and DNS (Optional):

If you have a domain name, you can configure it to point to your EC2 instance's Elastic IP address. This step involves updating your domain registrar's DNS settings to point to your Elastic IP.

Secure Your Application:

Ensure that your Rails application is properly secured, including setting up firewalls, configuring SSL/TLS certificates if needed, and following best practices for server security.

Monitor and Maintain:

Regularly monitor your EC2 instance, keep your system and application updated, and set up backups and monitoring tools for your application.

This is a high-level guide, and the actual steps and configurations can vary based on your specific application's requirements. Be sure to refer to the documentation for the specific technologies you're using (e.g., Nginx, Ruby on Rails) for more detailed instructions. Additionally, consider using tools like Capistrano or Docker for more streamlined deployment and management of your Rails application.


ssh -i /home/dev/Downloads/demoapp.pem ubuntu@<your-ec2-public-ip>

permission denied so i ran below command
chmod 400 /home/dev/Downloads/demoapp.pem


after this ran above command again

if everything is okay you will get below terminal

    ubuntu@ip-172-31-8-172:~$ 

    run below commnd on this terminal
    sudo apt update
sudo apt upgrade


this above command will update and upgrade system on this terminal

now you have to install dependencies to run ruby and rails on this terminal


sudo apt install git ruby ruby-dev rubygems nodejs postgresql postgresql-contrib libpq-dev build-essential


after above command i got kernel problem on aws instance 

kill terminal 

login to ws instance again by running first command you have to reboot system so that 

run below commands

uname -r

sudo reboot


on aws instance terminal only

now run above command again

after that install rails 

gem install rails 


if you are facing permission error then try with sudo 

    sudo gem install rails >> this is for developement only 

    




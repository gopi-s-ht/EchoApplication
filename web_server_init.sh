sudo apt-get update
#web server setup
sudo apt-get install apache2 -y
sudo service apache2 start
echo "Hello world!" > /var/www/html/index.html
#Postgresql setup
sudo apt install postgresql -y
sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/" /etc/postgresql/9.5/main/postgresql.conf
sudo sh -c 'echo "host    all             all             0.0.0.0/0                trust" >> /etc/postgresql/9.5/main/pg_hba.conf'
sudo service postgresql restart
apt-get update
apt-get upgrade
apt-get install sudo
apt-get install -y proftpd
sudo useradd -m Merry -s /bin/bash -p "$(echo "kalimac" | openssl passwd -1 -stdin)"
sudo useradd -m Pippin -s /bin/bash -p "$(echo "secondbreakfast" | openssl passwd -1 -stdin)"
ln -sf /home/testvm/testfilezilla/proftpd.conf /etc/proftpd/proftpd.conf
apt-get install -y openssl
mkdir /etc/proftpd/ssl
openssl req -new -x509 -keyout /etc/proftpd/ssl/proftpd.key.pem -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem
chmod 600 /etc/proftpd/ssl/proftpd.*
ln -sf /home/testvm/testfilezilla/tls.conf /etc/proftpd/tls.conf
sudo service proftpd restart


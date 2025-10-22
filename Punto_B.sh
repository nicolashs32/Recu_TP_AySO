sudo groupadd p1c1_2024_g1
sudo useradd -m -g p1c1_2024_g1 p1c1_2024_u1
echo "p1c1_2024_u1:clave1" | sudo chpasswd
sudo chown -R p1c1_2024_u1:p1c1_2024_g1 /datos
sudo chmod -R u=rwx,g=rx,o= /datos
su -c "whoami > /datos/validar1.txt" p1c1_2024_u1

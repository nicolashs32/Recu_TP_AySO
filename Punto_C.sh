sudo groupadd p1c1_2024_Todos
sudo useradd -m -g p1c1_2024_Todos p1c1_2024_u2
echo "p1c1_2024_u2:clave1" | sudo chpasswd
sudo usermod -aG p1c1_2024_Todos p1c1_2024_u1
sudo chgrp -R p1c1_2024_Todos /datos
sudo chmod -R g+w /datos
sudo chmod o=x /datos
sudo chmod o-r /datos/*
sudo chmod -R o-r /datos
su -c "id >> /datos/validar1.txt" p1c1_2024_u2

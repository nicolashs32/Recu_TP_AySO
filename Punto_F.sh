mkdir ~/Punto_F
IP_PUB=$(curl -s ifconfig.me)
echo "Mi ip publica es: $IP_PUB" > ~/Punto_F/Filtro_Avanzado.txt
CPU_FULL=$(cat /proc/cpuinfo | grep "model name" | head -1 | awk -F": " "{print \$2}")
CPU_MODEL=$(echo "$CPU_FULL" | awk -F "@" "{print \$1}")
CPU_FREQ=$(echo "$CPU_FULL" | awk "{print \$NF}")
echo "CPU Modelo: $CPU_MODEL Frecuencia: $CPU_FREQ" >> ~/Punto_F/Filtro_Avanzado.txt

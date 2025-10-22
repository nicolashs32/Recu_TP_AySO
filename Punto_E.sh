mkdir ~/Punto_E
cat /proc/meminfo | grep MemTotal | awk "{print \$2 \$3}" > ~/Punto_E/Filtro_basico.txt
cat /proc/cpuinfo | grep "model name" | head -1 | awk -F": " "{print \$2}" >> ~/Punto_E/Filtro_basico.txt

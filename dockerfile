FROM ubuntu/nginx:1.18-22.04_beta
RUN cat /proc/cpuinfo | grep processor | wc -l > var/www/html/proc.txt && cat /proc/meminfo | head -n 3 | grep -i 'memtotal' | grep -o '[[:digit:]]*' > var/www/html/ram.txt && df -h | grep 'overlay' | grep -o '[[:digit:]]*' | head -1 > var/www/html/rom.txt
COPY /html /var/www/html
EXPOSE 80
cp /home/site/default /etc/nginx/sites-available/default
service nginx reload

file="/home/site/wwwroot/.env"

if [ ! -e "$file" ]; then
    cd /home/site/wwwroot && cp -n .env.example .env 
    php artisan key:generate
fi
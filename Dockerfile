# Folosim imagine oficiala nginx
FROM nginx:alpine

# Copiem index.html în folderul unde Nginx servește fișierele
COPY index.html /usr/share/nginx/html/index.html

# Expunem portul 80
EXPOSE 80

# Comanda implicită pentru container
CMD ["nginx", "-g", "daemon off;"]

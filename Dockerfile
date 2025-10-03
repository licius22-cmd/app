# Usa imagem oficial do Nginx
FROM nginx:stable-alpine

# Remove configs padrão e adiciona a sua
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

# Copia os arquivos do site
COPY index.html /usr/share/nginx/html/

# Railway expõe via variável PORT
ENV PORT 8080
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

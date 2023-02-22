# ------------------------------------------------------
# Stage 1 - the build stage
# ------------------------------------------------------
FROM node:14.18.3-alpine AS node_build
WORKDIR /usr/src/web
COPY package*.json ./

# ------------------------------------------------------
# Stage 2 - compile source code
# ------------------------------------------------------
FROM node_build as source
COPY . .
RUN npm install
RUN npm run build

# ------------------------------------------------------
# Stage 3 - the production stage
# ------------------------------------------------------
FROM nginx:1.16.0-alpine

RUN rm -rf /var/www/html/*
COPY ./.nginx/nginx.conf /etc/nginx/nginx.conf
# Copy from the stage 1
COPY --from=source /usr/src/web/build /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

# Sử dụng Node.js 14 làm base image
FROM node:14  

# Thiết lập thư mục làm việc trong container
WORKDIR /app  

# Copy file package.json vào container để cài đặt dependencies trước
COPY package.json .  

# Cài đặt dependencies
RUN npm install  

# Copy toàn bộ mã nguồn vào container
COPY . .  

# Khai báo container sẽ sử dụng cổng 3000
EXPOSE 3000  

# Chạy ứng dụng Node.js với file app.mjs
CMD [ "node", "app.mjs"]

FROM node:16-alpine

# Thiết lập thư mục làm việc trong container là /app
WORKDIR /app

# Sao chép package.json và pakcage-lock vào container
COPY package*.json ./

# Copy yarn.lock vào container
COPY yarn.lock ./

# Chạy npm install bên trong container
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Vì trong code đang chạy port 3000 nên phải expose port 3000 ra để container chạy
EXPOSE 3000

# Lệnh trong pakcage.json để chạy server

CMD ["npm", "start"]


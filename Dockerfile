# Use Node.js official image
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install

COPY . .

# Start the app
CMD ["npm", "start"]

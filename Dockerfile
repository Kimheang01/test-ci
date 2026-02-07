# Use Node official image
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies (none in this case)
RUN npm install

# Copy project files
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run app
CMD ["node", "index.js"]
# Use official Node.js LTS image
FROM node:18

# Set working directory in container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the app port
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]


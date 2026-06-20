# Use a lightweight official Node image
FROM node:18-alpine

# Set the working directory inside the cloud container
WORKDIR /app

# Copy package files and install production dependencies
COPY package*.json ./
RUN npm install --only=production

# Copy the rest of your application code
COPY . .

# Expose the network port (Render automatically detects this)
EXPOSE 8080

# The command to fire up your app
CMD ["node", "index.js"]

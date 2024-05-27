# Use the official Node.js 14 image as the base image
FROM node:14

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY . .

# Remove node_modules directory to ensure fresh install
RUN rm -rf node_modules

# Install dependencies again to ensure compatibility with the container's OS
RUN npm install

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "server.js"]
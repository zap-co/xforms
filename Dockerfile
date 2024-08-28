# Use the official Node.js 14 image as a parent image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY src ./src
COPY public ./public
COPY tsconfig.json .

# Build the TypeScript code
RUN npm run build

# Expose port 4000
EXPOSE 4000

# Start the application
CMD ["npm", "start"]
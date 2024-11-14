# Set the base image to create the image for the React app
FROM node:20-alpine

# Create a non-root user and group to run the app securely
RUN addgroup react-group && adduser -S -G react-group react-user

# Switch to the non-root user
USER react-user

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json for dependency installation
COPY package*.json ./

#Temporarily switch to root to manage ownership if needed
USER root

# Adjust ownership of the /app directory for the react-user
RUN chown -R react-user:react-group /app

# Switch back to the react-user
USER react-user

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 5173 (used by Vite in development mode)
EXPOSE 5173

# Run the app
CMD ["npm", "run", "dev"]

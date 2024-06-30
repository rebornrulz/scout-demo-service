FROM node:22-alpine

# Set environment variables
ENV BLUEBIRD_WARNINGS=0 \
  NODE_ENV=production \
  NODE_NO_WARNINGS=1 \
  NPM_CONFIG_LOGLEVEL=warn \
  SUPPRESS_NO_CONFIG_WARNING=true

# Install dependencies
COPY package.json ./
RUN npm install --no-optional

# Copy the application code
COPY . /app

# Expose the port
EXPOSE 3000

# Start the application
CMD ["node", "/app/app.js"]
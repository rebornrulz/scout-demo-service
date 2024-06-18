# Build stage
FROM node:22.3.0-alpine AS build

WORKDIR /app
COPY package.json ./
RUN npm install --no-optional
COPY . .
RUN npm run build

# Runtime stage
FROM node:22.3.0-alpine

WORKDIR /app
COPY --from=build /app/dist .

ENV NODE_ENV=production

EXPOSE 3000
CMD ["node", "index.js"]

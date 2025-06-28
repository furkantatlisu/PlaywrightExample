# Dockerfile for Playwright tests
FROM mcr.microsoft.com/playwright:v1.44.0-jammy

WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm ci

COPY . .

# Install Playwright browsers
RUN npx playwright install --with-deps

# Default command: run tests
CMD ["npm", "run", "test"]

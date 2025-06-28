# PlaywrightExample

This project contains automated tests written with Playwright and uses GitHub Actions for CI/CD.

## Installation

1. **Clone the repository:**
   ```sh
   git clone <repo-url>
   cd <project-directory>
   ```

2. **Install dependencies:**
   ```sh
   npm ci
   ```

3. **Install Playwright browsers:**
   ```sh
   npx playwright install --with-deps
   ```

## Running Tests

```sh
npm run test
```

After the tests complete, results will be available in the `playwright-report/` folder.

## CI/CD (GitHub Actions)

This project automatically runs tests on every push and pull request to the `main` or `master` branches.

### Workflow Steps

- Checks out the code
- Sets up the Node.js environment
- Installs dependencies (`npm ci`)
- Installs Playwright browsers
- Runs the tests (`npm run test`)
- Uploads the test report (`playwright-report/`) as an artifact, retained for 30 days

### Accessing Reports

Go to GitHub Actions > the relevant workflow run > Artifacts section to download the `playwright-report`.

## Running Tests with Docker

1. Build the Docker image:
   ```sh
   docker build -t playwright-example .
   ```
2. Run the tests:
   ```sh
   docker run --rm playwright-example
   ```

To access the test report, you can mount the `playwright-report` folder as a volume:
```sh
# For Windows (PowerShell or CMD)
docker run --rm -v %cd%\playwright-report:/app/playwright-report playwright-example

# For Linux/MacOS
docker run --rm -v $(pwd)/playwright-report:/app/playwright-report playwright-example
```

## Additional Information

- Playwright documentation: https://playwright.dev/
- To view the test report locally:
  ```sh
  npx playwright show-report
  ```
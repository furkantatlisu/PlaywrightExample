# PlaywrightExample

    - name: Install dependencies
      run: npm ci
    - name: Install Playwright Browsers
      run: npx playwright install --with-deps
    - name: Create spec.ts directory
      run: npx bddgen
    - name: Run Playwright tests
      run: npx playwright test
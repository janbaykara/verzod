import { defineConfig } from 'vitest/config'

export default defineConfig({
  test: {
    // Only get files from within the src folder
    include: ['src/**\/*.{test,spec}.?(c|m)[jt]s?(x)']
  }
})

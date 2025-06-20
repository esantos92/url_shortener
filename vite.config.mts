import vue from '@vitejs/plugin-vue'
import tailwindcss from '@tailwindcss/vite'
import { defineConfig } from 'vite'
import RubyPlugin from 'vite-plugin-ruby'

export default defineConfig({
  plugins: [
    vue(),
    tailwindcss(),
    RubyPlugin(),
  ],
  server: {
    host: "0.0.0.0",
    port: 3036,
    strictPort: true,
  },
})

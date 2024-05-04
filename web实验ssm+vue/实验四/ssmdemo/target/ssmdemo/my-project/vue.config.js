const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true
})
module.exports = {
  devServer: {
    proxy: {
      '/api': {
        target: 'http://localhost:8088/ssmdemo/', // 后端服务地址
        changeOrigin: true,
        pathRewrite: { '^/api': '' }
      }
    }
  }
};

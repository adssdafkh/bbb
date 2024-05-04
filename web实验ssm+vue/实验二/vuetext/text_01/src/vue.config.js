module.exports = {
    devServer: {
        proxy: {
            "/api": {
                // 此处的写法，目的是为了 将/api 替换成 http://localhost:3000
                target: "http://localhost:3000",
                //是否跨域
                changeOrigin: true,
                //路径重写 下面示例为 将 /api 替换成空
                pathRewrite: {
                    "^/api": "",
                },
            },
        },
    },
};


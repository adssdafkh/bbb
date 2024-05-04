<template>
  <div class="login-container">
    <div class="message warning">
      <div class="inset">
        <div>
          <div class="login-head">
            <h1>登 录</h1>
            <div class="alert-close"> </div>
          </div>
        </div>
        <div class="aaa">
          <input type="text" v-model="username" placeholder="用户名">
        </div>
        <div class="bbb">
          <input type="password" v-model="password" placeholder="密码"></div>
      </div>
      <div class="ccc">
        <button @click="login" class="large-button">登录</button>
        <button @click="register" class="large1-button">注册</button>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';
export default {
  data() {
    return {
      username: '',
      password: ''
    };
  },
  methods: {
    register() {
      this.$router.push('/register'); // 使用路由导航而不是直接修改 location.href
    },
    login() {
      axios.post('http://localhost:3000/users', {
        username: this.username,
        password: this.password,
      }).then(res => {
        console.log(res.data);
        this.$router.push('/'); // 使用路由导航而不是直接修改 location.href
      }).catch(error => {
        console.log('登录请求失败', error);
        // 这里可以显示错误信息给用户
      });
    }
  },
}
</script>

<style scoped>
form {
  padding: 3em 2em;

}
.ccc{
  margin-top:5px;
  font-size: 38px;
}
.aaa input{margin-top:50px;
  font-size: 24px;
}
.bbb input{
  margin-top:10px;
  font-size: 24px;
}

.message.warning  {
  background: rgba(255, 255, 255, 0.33);
  -moz-box-shadow: 0 0 0 3px rgba(56, 41, 32, 0.25);
  -webkit-box-shadow: 0 0 0 3px rgba(56, 41, 32, 0.25);
  box-shadow: 0 0 0 3px rgba(56, 41, 32, 0.25);
  margin:12% auto 0;
  width: 25%;
  height:350px;
}

.large-button {
  font-size: 20px; /* 设置按钮字体大小 */
  background-color: rgba(255, 255, 255, 1);
  margin-right: 50px;
  border-radius: 2.5px;
  cursor: pointer;
  margin-left: 70px;
}
.large1-button {
  font-size: 20px; /* 设置按钮字体大小 */
  background-color: rgba(255, 255, 255, 1);
  margin-right: 60px;
  border-radius: 2.5px;
  cursor: pointer;

}
.button-container {
  display: flex; /* 使用 Flexbox 布局 */
  /* 两个按钮均匀分布在容器内 */
}

</style>
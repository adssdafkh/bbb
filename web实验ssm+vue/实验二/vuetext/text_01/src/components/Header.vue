<template>
  <div class="container">
    <div class="cloud-programming"> </div>
    <div class="cloud-text-big">云端编程，浏览器里边学边练</div>
    <div class="cloud-text-small">软件定义一切，网络连接时空，学习软件技术，创造未来世界。</div>
    <button class="study-btn">马上学习</button>
  </div>
  <router-link to="/login"><button class="login-btn">登录</button></router-link>
  <router-link to="/register"><button class="register-btn">注册</button></router-link>
</template>

<script>

export default {
  name: "Header"
}
</script>

<style scoped>
.container {
  position: relative;
  width: 100%;
  height: 48vh;
  background-image: url('11.png');
  background-size: cover;
  background-position: center;

}
.login-btn, .register-btn {
  position: absolute;
  top: 10px;
  right: 20px;
  padding: 10px 20px;
  background-color: rgba(255, 255, 255, 0);
  border: none;
  border-radius: 2.5px;
  cursor: pointer;
  color: white;
  border: 0.5px solid white;
}
.login-btn {
  right: 100px;
}
.cloud-programming {
  background: url("../assets/logo-white.svg");
  background-repeat: no-repeat;
  background-size: contain;
  height: 30px;
  left: 65px;
  padding: 10px;
  font-size: 20px;
  color: white;
}
.cloud-text-big {
  font-size: 40px;
  font-weight: bold;
  text-align: center;
  margin-top: 70px;
  color:white;
  margin-bottom: 10px;
}

.cloud-text-small {
  font-size: 14px;
  text-align: center;
  color:white;
}
.study-btn {
  position: absolute;
  top: 10px;
  right: 47%;
  padding: 10px 20px;
  background-color: white;
  border: none;
  border-radius: 2.5px;
  cursor: pointer;
  color: skyblue;
  border: 0.5px solid white;
  margin-top: 250px;
}


</style>
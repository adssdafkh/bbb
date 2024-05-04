<template>
  <div>
    <div class="container1">
    </div>
    <div class="cloud-text-big2">高级Web编程实验室</div>
    <div class="cloud-text-small2">每人拥有自己完全独立的编程实验室，内置所有基础软件及学习素材。 打开浏览器，即刻开始编程！<button class="study-btn2" @click="showInfoModal1 = true">了解详情</button></div>
    <div v-if="showInfoModal1" class="info-modal">
      <p>高级Web编程实验室资料。</p>
      <button @click="closeInfoModal1">关闭</button>
    </div>
    <div class="container2">
    </div>
    <div class="cloud-text-big2">双屏学习</div>
    <div class="cloud-text-small2">双屏学习，小屏视频互动，大屏实际操作，学习无障碍。打开浏览器，即刻开始编程！<button class="study-btn2" @click="showInfoModal2 = true">了解详情</button></div>
    <div v-if="showInfoModal2" class="info-modal">
      <p>双屏学习资料</p>
      <button @click="closeInfoModal2">关闭</button>
    </div>
    <div class="cloud-text-big3">课程特色</div>
    <div class="custom-line"></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      showInfoModal1: false,
      showInfoModal2: false
    };
  },
  methods: {
    closeInfoModal1() {
      this.showInfoModal1 = false;
    },
    closeInfoModal2() {
      this.showInfoModal2 = false;
    }
  }
};
</script>

<style scoped>
.container1 {
  position: relative;
  height: 80vh;
  background-image: url('22.png');
  background-size: cover;
  background-position: center;
  width:50%;
  margin-left: 30px;
  margin-top:10px;
}
.cloud-text-big2 {

  font-size: 40px;
  font-weight: bold;

  margin-top: 8px;
  color:black;
  margin-left: 30px;
}
.cloud-text-small2 {
  font-size: 14px;
  background-color: white;
  color:black;
  margin-left: 30px;
  margin-right: 30px;

}

.study-btn2 {
  background-color: white;
  color: black;
  border: 0.5px solid black;
  width:100%;
}
.container2 {
  position: relative;
  height: 80vh;
  background-image: url('33.png');
  background-size: cover;
  background-position: center;
  width:50%;
  margin-left: 30px;
  margin-top:10px;
}
.cloud-text-big2 {
  font-size: 40px;
  font-weight: bold;
  margin-top: 8px;
  color:black;
  margin-left: 30px;
  margin-right: 30px;
}
.cloud-text-small2 {
  font-size: 14px;
  background-color: white;
  color:black;
  margin-left: 30px;
  margin-right: 30px;

}

.study-btn2 {
  background-color: white;
  color: black;
  border: 0.5px solid black;
  width:100%;
}
.cloud-text-big3 {
  font-size: 28px;
  font-weight: bold;
  margin-top: 16px;
  color:black;
  margin-left: 30px;
  margin-right: 30px;
}
.custom-line {
  margin-top: 5px;
  border-top: 1px solid grey;
  margin-left: 30px;
  margin-right: 30px;
}

/* 信息框样式 */
.info-modal {
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: white;
  padding: 20px;
  border: 1px solid black;
  z-index: 9999; /* 确保信息框位于顶层 */
}
</style>

<template>
  <Header></Header>
  <Body></Body>
  <Bottom></Bottom>
</template>
<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'
import Header from "@/components/Header";
import Body from "@/components/Body";
import Bottom from "@/components/Botttom";
export default {
  name: 'HomeView',
  components: {
    HelloWorld,Header,Body,
      Bottom
  }
}
</script>
<style scoped>
</style>

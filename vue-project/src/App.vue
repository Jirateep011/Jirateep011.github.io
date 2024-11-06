// App.vue
<template>
  <div class="app-container">
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: 'App',
}
</script>

<style>
.app-container {
  min-height: 100vh;
  background: linear-gradient(135deg, #fce4ec 0%, #f8bbd0 100%);
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: 'Kanit', sans-serif;
}
</style>
// components/HomePage.vue
<template>
  <div class="home-container">
    <h1 class="title">Special Birthday Card</h1>
    <LottieAnimation
      animationPath="/src/assets/cake.json"
      :loop="true"
      :autoplay="true"
    />
    <div class="button-group">
      <button @click="$router.push('/card-front')" class="nav-button">
        เปิดการ์ด 🤍
      </button>
    </div>
  </div>
</template>

<script>
import LottieAnimation from '@/components/LottieAnimation.vue';

export default {
  components: {
    LottieAnimation
  }
}
</script>

<style scoped>
.home-container {
  text-align: center;
  padding: 2rem;
  background: rgba(255, 255, 255, 0.9);
  border-radius: 20px;
  box-shadow: 0 8px 32px rgba(31, 38, 135, 0.15);
  max-width: 600px;
  margin: auto;
  animation: fadeIn 1s ease-in-out;
  position: relative;
  overflow: hidden;
}

.title {
  font-size: 2.5rem;
  color: #e91e63;
  margin-bottom: 2rem;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
}

.button-group {
  display: flex;
  flex-direction: column;
  gap: 1rem;
  justify-content: center;
}

.nav-button {
  padding: 1rem 2rem;
  font-size: 1.2rem;
  border: none;
  border-radius: 50px;
  background: linear-gradient(45deg, #ff4081, #f50057);
  color: white;
  cursor: pointer;
  transition: transform 0.3s, box-shadow 0.3s;
}

.nav-button:hover {
  transform: translateY(-3px);
  box-shadow: 0 5px 15px rgba(233, 30, 99, 0.3);
}

@media (min-width: 768px) {
  .button-group {
    flex-direction: row;
  }
}

@media (max-width: 600px) {
  .home-container {
    padding: 1rem;
  }
  .title {
    font-size: 2rem;
  }
  .nav-button {
    padding: 0.8rem 1.5rem;
    font-size: 1rem;
  }
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

@keyframes moveBackground {
  0% {
    background-position: 0 0;
  }
  100% {
    background-position: 100% 100%;
  }
}

.home-container::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: -1;
}
</style>
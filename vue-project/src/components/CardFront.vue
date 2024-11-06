// components/CardFront.vue
<template>
  <div class="card-container" :class="{ 'is-flipped': isFlipped }">
    <div class="card">
      <div class="card-front">
        <h2>แด่คนพิเศษ</h2>
        <LottieAnimation
          animationPath="/src/assets/heart.json"
          :loop="true"
          :autoplay="true"
        />
        <p>กดเปิดการ์ดดูสิ</p>
        <button @click="flipCard" class="flip-button">
          พลิกการ์ด
        </button>
        <button @click="$router.push('/gallery')" class="nav-button">
          ดูแกลเลอรี่
        </button>
      </div>
      <div class="card-back">
        <p class="wish-header">
          HAPPY BIRTHDAY
        </p>

        <p class="wish-text">
          ในวันพิเศษของเธอ<br>
          BE HEALTHY BE HAPPY<br>
          รักเธอนะครับ❤️<br>
        </p>

        <p class="wish-footer">
          จาก,<br>
          [เดย์]<br>
          ถึง,<br>
          [แบม]<br>
        </p>
        <button @click="flipCard" class="flip-button">
          กลับด้านหน้า
        </button>
      </div>
    </div>
    <button @click="$router.push('/')" class="back-button">
      กลับหน้าหลัก
    </button>
  </div>
</template>

<script>
import LottieAnimation from '@/components/LottieAnimation.vue';

export default {

  components: {
    LottieAnimation
  },

  data() {
    return {
      isFlipped: false
    }
  },
  methods: {
    flipCard() {
      this.isFlipped = !this.isFlipped
    }
  }
}
</script>

<style scoped>
.card-container {
  perspective: 1000px;
  width: 300px;
  height: 400px;
  margin: auto;
  text-align: center;
  animation: fadeIn 1s ease-in-out;
  position: relative;
  overflow: hidden;
}

.card {
  position: relative;
  width: 100%;
  height: 100%;
  transform-style: preserve-3d;
  transition: transform 0.8s;
}

.card-container.is-flipped .card {
  transform: rotateY(180deg);
}

.card-front,
.card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 2rem;
  background: white;
  border-radius: 15px;
  box-shadow: 0 8px 32px rgba(31, 38, 135, 0.15);
}

.card-back {
  transform: rotateY(180deg);
  background: linear-gradient(45deg, #ffebee, #fce4ec);
}

.decoration {
  font-size: 4rem;
  margin: 1rem 0;
  animation: spin 4s linear infinite;
}

.wish-header {
  text-align: center;
  margin: auto;
  font-size: 1.7rem;
  color: #e91e63;
}

.wish-text {
  text-align: center;
  margin: auto;
  line-height: 2;
  font-size: 1.2rem;
  color: #666;
}

.wish-footer {
  text-align: center;
  margin-top: auto;
  font-size: 1rem;
  color: #888;
}

.flip-button,
.nav-button,
.back-button {
  margin-top: 1rem;
  padding: 0.8rem 1.5rem;
  border: none;
  border-radius: 25px;
  background: linear-gradient(45deg, #ff4081, #f50057);
  color: white;
  cursor: pointer;
  transition: transform 0.3s;
}

.flip-button:hover,
.nav-button:hover,
.back-button:hover {
  transform: scale(1.05);
}

@media (max-width: 300px) {
  .card-container {
    width: 100%;
    height: auto;
  }
  .card {
    height: auto;
  }
  .card-front,
  .card-back {
    padding: 1rem;
  }
  .decoration {
    font-size: 3rem;
  }
  .wish-text {
    font-size: 1rem;
  }
  .flip-button,
  .nav-button,
  .back-button {
    padding: 0.6rem 1rem;
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

@keyframes spin {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
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

.card-container::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: -1;
}
</style>
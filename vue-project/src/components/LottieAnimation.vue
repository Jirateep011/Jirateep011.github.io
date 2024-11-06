<template>
  <div ref="lottieContainer" class="lottie-container"></div>
</template>

<script>
import lottie from 'lottie-web';

export default {
  props: {
    animationPath: {
      type: String,
      required: true
    },
    loop: {
      type: Boolean,
      default: true
    },
    autoplay: {
      type: Boolean,
      default: true
    }
  },
  mounted() {
    fetch(this.animationPath)
      .then(response => response.json())
      .then(animationData => {
        lottie.loadAnimation({
          container: this.$refs.lottieContainer,
          renderer: 'svg',
          loop: this.loop,
          autoplay: this.autoplay,
          animationData: animationData
        });
      })
      .catch(error => {
        console.error('Error loading Lottie animation:', error);
      });
  }
}
</script>

<style scoped>
.lottie-container {
  width: 100%;
  height: 40%;
}
</style>
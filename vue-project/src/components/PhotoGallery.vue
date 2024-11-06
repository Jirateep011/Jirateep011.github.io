// components/PhotoGallery.vue
<template>
  <div class="gallery-container">
    <h2>แกลเลอรี่รูปภาพ</h2>
    <div class="photo-grid">
      <div class="photo-item" v-for="(photo, index) in photos" :key="index">
        <img :src="photo.url" :alt="photo.alt">
      </div>
    </div>
    <button @click="$router.push('/')" class="back-button">
      กลับหน้าหลัก
    </button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      photos: [
        { url: '/photos/LINE_ALBUM_27102567 BE_241107_2.jpg', alt: 'Birthday Celebration 1' },
        { url: '/photos/55835483-6DF8-4D1F-9BC7-52D5827B7F27.jpeg', alt: 'Birthday Celebration 2' },
        { url: '/photos/DE5AE7D0-A175-496D-A779-C5C0375C1D15.jpeg', alt: 'Birthday Celebration 3' },
        { url: '/photos/IMG_5294.JPG', alt: 'Birthday Celebration 4' },
        { url: '/photos/LINE_ALBUM_1112567 BE_241102_1.jpg', alt: 'Birthday Celebration 5' },
        { url: '/photos/LINE_ALBUM_27102567 BE_241107_1.jpg', alt: 'Birthday Celebration 6' },
        { url: '/photos/LINE_ALBUM_241107_1.jpg', alt: 'Birthday Celebration 7' },
        { url: '/photos/WIN_20241013_17_25_31_Pro.jpg', alt: 'Birthday Celebration 8' },
      ]
    }
  }
}
</script>

<style scoped>
.gallery-container {
  background: white;
  padding: 2rem;
  border-radius: 20px;
  box-shadow: 0 8px 32px rgba(31, 38, 135, 0.15);
  width: 80%;
  max-width: 1000px;
  margin: auto;
  text-align: center;
  animation: fadeIn 1s ease-in-out;
  position: relative;
  overflow: hidden;
}

h2 {
  text-align: center;
  color: #e91e63;
  margin-bottom: 2rem;
  animation: pulse 2s infinite;
}

.photo-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1rem;
  margin-bottom: 2rem;
}

.photo-item {
  position: relative;
  padding-bottom: 100%;
  overflow: hidden;
  border-radius: 10px;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s, box-shadow 0.3s;
}

.photo-item img {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 100%;
  height: 100%;
  object-fit: cover;
  transform: translate(-50%, -50%);
  transition: transform 0.3s, box-shadow 0.3s;
}

.photo-item:hover {
  transform: scale(1.05);
  box-shadow: 0 8px 32px rgba(31, 38, 135, 0.2);
}

.back-button {
  display: block;
  margin: 0 auto;
  padding: 0.8rem 1.5rem;
  border: none;
  border-radius: 25px;
  background: linear-gradient(45deg, #ff4081, #f50057);
  color: white;
  cursor: pointer;
  transition: transform 0.3s;
}

.back-button:hover {
  transform: translateY(-3px);
}

@media (max-width: 600px) {
  .gallery-container {
    padding: 1rem;
  }
  .h2 {
    font-size: 1.5rem;
  }
  .photo-grid {
    grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  }
  .photo-item {
    padding-bottom: 75%;
  }
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

@keyframes pulse {
  0% {
    transform: scale(1);
  }
  50% {
    transform: scale(1.05);
  }
  100% {
    transform: scale(1);
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

.gallery-container::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: -1;
}
</style>
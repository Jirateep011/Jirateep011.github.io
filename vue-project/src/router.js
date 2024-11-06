import { createRouter, createWebHistory } from 'vue-router'
import HomePage from './components/HomePage.vue'
import CardFront from './components/CardFront.vue'
import PhotoGallery from './components/PhotoGallery.vue'

const routes = [
  { path: '/', component: HomePage },
  { path: '/card-front', component: CardFront },
  { path: '/gallery', component: PhotoGallery }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
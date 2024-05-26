<script setup lang="ts">
import { onMounted, ref, onUnmounted } from 'vue';
import HeaderComponent from './components/HeaderComponent.vue';
import BodyContainer from './components/BodyContainer.vue';

const visitorCount = ref(0);
const scrollProgress = ref(0);

const updateScrollProgress = () => {
  const scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
  const scrollHeight = document.documentElement.scrollHeight || document.body.scrollHeight;
  const clientHeight = document.documentElement.clientHeight || document.body.clientHeight;
  const windowHeight = scrollHeight - clientHeight;
  const scrolled = (scrollTop / windowHeight) * 100;
  scrollProgress.value = scrolled;
};

onMounted(() => {
  window.addEventListener('scroll', updateScrollProgress);
  fetchVisitorCount();
});

onUnmounted(() => {
  window.removeEventListener('scroll', updateScrollProgress);
});

async function fetchVisitorCount() {
  try {
    const response = await fetch('/api/visit', { method: 'GET', credentials: 'include' });
    const data = await response.json();
    visitorCount.value = data.visitorCount;
  } catch (error) {
    console.error('Error fetching visitor count:', error);
  }
}
</script>

<template>
  <div>
    <div class="progress-bar" :style="{ width: scrollProgress + '%' }"></div>
    <HeaderComponent />
    <BodyContainer :visitorCount="visitorCount" />
  </div>
</template>

<style>
@import url('https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&display=swap');

.progress-bar {
  position: fixed;
  top: 0;
  left: 0;
  height: 8px;
  background-color: var(--progressBar-color);
  z-index: 1000;
}
:root {
  --progressBar-color: #792213;
  --icon-color: blue;
  --textIcon-color: blue;
  --title-color: #ac594a;
  --container-color: #ddd2cf;
  --sidebar-color: #ddd2cf;
  --fillBox-color: #ac594a;
}
.dark-theme {
  --progressBar-color: #792213;
  --fillBox-color: #b84a37;
  --link-color: rgb(156, 226, 250);
  --background-color: #000000d2;
  --icon-color: #ffffff;
  --text-color: #ffffff;
  --textIcon-color: white;
  --title-color: #b84a37;
  --container-color: #74747463;
  --sidebar-color: #74747463;
}
</style>

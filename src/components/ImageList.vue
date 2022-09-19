<script>
import { computed } from "vue";

export default {
  props: ["items"],
  setup(props) {
    const sortedImages = computed(() => {
      return props.items.sort((a, b) => a.sortingNumber > b.sortingNumber);
    });

    return {
      sortedImages,
    };
  },
};
</script>

<template>
  <div class="ImageList">
    <div v-for="item in sortedImages" :key="item.metadata.imgSrc" class="ImageList__item">
      <img :src="item.images.overall.images.sizes.medium.src" />
      <div>{{ item.metadata.title }}</div>
      <div>{{ item.metadata.date }}</div>
      <div>{{ item.repository }}</div>
    </div>
  </div>
</template>

<style>
.ImageList__item {
  margin-bottom: var(--space-md);
}
</style>

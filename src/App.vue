<script>
import { ref } from "vue";
import Uploader from "./components/Uploader.vue";
import ImageList from "./components/ImageList.vue";

export default {
  components: {
    Uploader,
    ImageList,
  },
  setup() {
    const images = ref([]);
    const handleFileLoad = (data) => {
      images.value = data;
    };

    return {
      images,
      handleFileLoad,
    };
  },
};
</script>

<template>
  <div>
    <ImageList v-if="images.length" :items="images" />
    <Uploader v-else @load="handleFileLoad" />
  </div>
</template>

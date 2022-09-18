<script>
import { ref } from "vue";

export default {
  emits: ["load"],
  setup(_, { emit }) {
    const error = ref(null);
    const handleFileChange = (e) => {
      const reader = new FileReader();
      reader.readAsText(e.target.files[0]);
      reader.addEventListener(
        "load",
        (e) => {
          try {
            const data = JSON.parse(e.target.result);
            emit("load", data.items[0].images.overall.images);
          } catch (err) {
            error.value = "JSON-Parsing error";
          }
        },
        { once: true }
      );
      
    };
    return {
      handleFileChange,
      error,
    };
  },
};
</script>

<template>
  <div>
    <input type="file" @change="handleFileChange" />
    <div v-if="error">{{ error }}</div>
  </div>
</template>

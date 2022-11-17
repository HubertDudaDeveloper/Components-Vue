<template>
    <section v-for="(item, index) in gallery" :key="index">
        <img v-for="(item, index) in images" :key="index" src="https://picsum.photos/seed/picsum/800/800" />
    </section>
</template>
<script setup lang="ts">
import { ref, reactive, defineProps } from 'vue'

const props = defineProps({
  gallery: Array,
  images: String,
  image: String,
  customClass: String,
  customStyle: String,
  id: String
})
</script>

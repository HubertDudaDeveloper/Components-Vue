<template>
    <section :class="customClass" :style="customStyle" :id="'section_' + id">
    </section>
</template>
<script setup lang="ts">
import { defineProps, ref } from 'vue'

const props = defineProps({
  function: String,
  customStyle: String,
  customClass: String,
  id: String
})

</script>

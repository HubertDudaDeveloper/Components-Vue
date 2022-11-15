<template>
    <h1 :id="id" :class="customClass + ' ' + 'text-' + color" :style="customStyle">{{label}}</h1>
</template>
<script setup lang="ts">
import { defineProps } from 'vue'

const props = defineProps({
  customStyle: String,
  customClass: String,
  label: String,
  color: String,
  id: String
})

</script>

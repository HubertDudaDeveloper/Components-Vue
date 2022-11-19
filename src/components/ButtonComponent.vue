<template>
    <button :style="customStyle" :class="customClass" class="btn" v-if="true"><span>{{label}}</span></button>
</template>
<script setup lang="ts">
import { defineProps } from 'vue'

const props = defineProps({
  function: String,
  click: String,
  customStyle: String,
  customClass: String,
  label: String
})

</script>

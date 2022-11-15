<template>
    <input :class="customClass" :style="customStyle" :placeholder="label"  :id="'input_' + id" :type="type" v-model="input.value"/>
</template>
<script setup lang="ts">
import { defineProps, ref } from 'vue'

const props = defineProps({
  function: String,
  customStyle: String,
  customClass: String,
  required: Boolean,
  label: String,
  type: String,
  id: String
})

const input = ref('')

</script>

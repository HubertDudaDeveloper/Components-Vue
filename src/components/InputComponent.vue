<template>
    <label :for="id" :required="required"><strong>{{ label }}</strong></label>
    <input :class="customClass" :style="customStyle" :placeholder="placeholder"  :id="id" :type="type" v-model="input.value" :required="required"/>
</template>
<script setup lang="ts">
import { defineProps, ref } from 'vue'

const props = defineProps({
  function: String,
  customStyle: String,
  customClass: String,
  required: Boolean,
  label: String,
  placeholder: String,
  type: String,
  id: String
})

const input = ref('')

</script>

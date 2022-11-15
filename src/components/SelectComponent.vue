<template>
    <label :for="'select_' + id" :required="required"><strong>{{label}}</strong></label>
    <select :class="customClass" :style="customStyle" :name="label"  :id="'select_' + id" v-model="select.value" :required="required">
        <option v-for="(item, index) in props.option" :key="index" :value="item.value">{{item.value}}</option>
    </select>
</template>
<script setup lang="ts">
import { defineProps, ref } from 'vue'

const props = defineProps({
  function: String,
  customStyle: String,
  customClass: String,
  label: String,
  required: Boolean,
  type: String,
  option: Array,
  id: String
})

const select = ref('')

</script>

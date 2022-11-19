<template>
    <form class="col-12 d-flex flex-column justify-content-center align-items-center gap-2" :class="customClass" :style="customStyle">
        <h2>{{label}}</h2>
        <InputComponent
            v-for="(item, index) in inputs"
            :key="index"
            :function="item.click"
            :customStyle="item.style"
            :customClass="item.class"
            :label="item.label"
            :required="item.required"
            :placeholder="item.placeholder"
            :type="item.type"
            :id="'form__input_' + index"
            :disabled="item.disabled"
        />
        <SelectComponent
            v-for="(item, index) in selects"
            :key="index"
            :function="item.click"
            :customStyle="item.style"
            :customClass="item.class"
            :label="item.label"
            :option="item.option"
            :required="item.required"
            :id="'form__select_' + index"
            :disabled="item.disabled"
        />
        <InputComponent
            v-for="(item, index) in consent"
            :key="index"
            :function="item.click"
            :customStyle="item.style"
            :customClass="item.class"
            :label="item.label"
            :required="item.required"
            :placeholder="item.placeholder"
            :type="item.type"
            :id="'form__checkbox_' + index"
            :disabled="item.disabled"
        />
        <ButtonComponent
            v-for="(item, index) in buttons"
            :key="index"
            v-on:click="item.click"
            :customStyle="item.style"
            :customClass="item.class "
            :label="item.label"
            :disabled="item.disabled"
        />
    </form>
</template>

<script setup lang="ts">
import InputComponent from './InputComponent.vue'
import SelectComponent from './SelectComponent.vue'
import ButtonComponent from './ButtonComponent.vue'

import { defineProps } from 'vue'

const props = defineProps({
  label: String,
  customClass: String,
  customStyle: String,
  inputs: Array,
  selects: Array,
  buttons: Array,
  consent: Array
})

</script>

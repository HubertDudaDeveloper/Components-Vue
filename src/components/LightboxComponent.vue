<template>
    <h2>{{label}}</h2>
    <section
    :id="id"
    :class="customClass"
    :style="customStyle"
    class="gallery"
    >
        <img
        v-for="(item, index) in images"
        :key="index"
        :src="item.image"
        class="gallery__image"
        :class="item.class"
        :style="item.style"
        v-on:click="lightbox(item.image, 'image_' + index)"
        >
    </section>
</template>
<script setup lang="ts">
import { ref, reactive, defineProps } from 'vue'

const lightbox = (url, id) => {
  const app = document.getElementById('app')
  const shadow = document.getElementById(id)
  const el = document.createElement('div')
  const img = document.createElement('img')

  img.setAttribute('src', url)
  img.classList.add('lightbox__image', 'col-12')
  el.classList.add('shadowbox')
  el.onclick = close

  app?.append(el)
  app?.append(img)
}

const close = () => {
  const img = document.querySelectorAll('.lightbox__image')
  const shadow = document.querySelectorAll('.shadowbox')

  img.forEach((item) => {
    item.remove()
  })

  shadow.forEach((item) => {
    item.remove()
  })
}

const props = defineProps({
  gallery: Object,
  images: Object,
  image: String,
  label: String,
  labelImage: String,
  customClass: String,
  customStyle: String,
  id: String
})
</script>

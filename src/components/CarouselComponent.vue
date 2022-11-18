<template>
    <section :id="id" class="opinion d-flex flex-column align-items-center position-relative p-sm-5 mt-5 col-12">
        <h2>{{props.label}}</h2>
      <div class="d-flex gap-1 col-12" style="height: 350px; overflow-x: hidden; overflow-y: hidden;"  id="opinions">
        <div v-for="(item, index) in props.slide" :key="index" class="d-flex flex-column align-items-center col-12 col-sm-4">
            <div :class="current(index, 'int') + ' ' + String(props.customClass)" :id="index" :style="props.customStyle" class="opinion__item glass rounded col-12 p-4 d-flex flex-column align-items-center">
                <img :src="item.icon" style="scale:0.75;" class="rounded-circle glass col-2">
                <h3>{{item.name}}</h3>
                <p> {{item.description}}</p>
                <p disabled>{{item.date}}</p>
            </div>
        </div>
      </div>
      <span class="d-flex gap-5">
          <button class="btn color-secondary bold" v-on:click="current((opinionActive(id) - 1) , 'change', id)">←</button>
          <button class="btn color-secondary bold"  v-on:click="current((opinionActive(id) + 1) , 'change', id)">→</button>
      </span>
    </section>
</template>
<script setup lang="ts">
import { defineProps, ref, reactive } from 'vue'

const opinionActive = (kId) => {
  const carousel = '#' + kId + ' .opinions_active'
  const id = document.querySelectorAll(String(carousel))[0].id
  return Number(id)
}

const current = (k, init, carId) => {
  const counter = (props.slide.length / 2)
  Math.round(counter)
  counter.toString()
  if (init === 'change') {
    const index = k % props.slide.length
    appear(index, carId)
  } else {
    if (k === 1) {
      return String('opinions_active')
    }
  }
}

const appear = (k, carId) => {
  const carousel = '#' + carId + ' .opinion__item'
  const opinion = document.querySelectorAll(String(carousel))
  opinion.forEach(item => {
    item.removeAttribute('style')
    item.classList.remove('opinions_active')
  })
  if (k < 0) {
    opinion[opinion.length - 1].classList.toggle('opinions_active')
    opinion[opinion.length - 1].scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'center' })
  } else {
    opinion[k].classList.toggle('opinions_active')
    opinion[k].scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'center' })
  }
}

const props = defineProps({
  customStyle: String,
  customClass: String,
  label: String,
  slide: Array,
  id: String
})

</script>
<style lang="sass">

.opinions_active
  scale: 1.1
  transform: translateY(25px)
  z-index: 99
  transition: 1s
@media screen and (max-width: 500px)
  .opinions_active
    scale: 1.01
    transform: translateY(0px)
    z-index: 99
    transition: 1s

</style>

<template>
    <section class="position-relative d-grid wave__container col-12" style=" height: 550px;" :style="'transform: rotate(' + directions() + ')'">
        <svg class="wave" style="width:200vw;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 350"><path :fill="color" fill-opacity="0.5" d="M0,160L48,149.3C96,139,192,117,288,133.3C384,149,480,203,576,202.7C672,203,768,149,864,117.3C960,85,1056,75,1152,101.3C1248,128,1344,192,1392,224L1440,256L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
        <svg class="wave" style="width:200vw;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 350"><path :fill="color" fill-opacity="0.75" d="M0,192L48,176C96,160,192,128,288,144C384,160,480,224,576,213.3C672,203,768,117,864,122.7C960,128,1056,224,1152,240C1248,256,1344,192,1392,160L1440,128L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
        <svg class="wave" style="width:200vw;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 350"><path :fill="color" fill-opacity="1" d="M0,96L48,128C96,160,192,224,288,213.3C384,203,480,117,576,122.7C672,128,768,224,864,250.7C960,277,1056,235,1152,208C1248,181,1344,171,1392,165.3L1440,160L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
    </section>
</template>
<script setup lang="ts">
import { defineProps } from 'vue'

const props = defineProps({
  color: String,
  directiong: String,
  id: String
})

const directions = () => {
  switch (props.directiong) {
    case 'up':
      return '180deg'

    case 'down':
      return '0deg'
  }
}
</script>
<style lang="sass">
.wave__container
    grid-template-areas: a a
    overflow-x: hidden
    overflow-y: hidden
.wave
    &:nth-child(1)
        grid-area: a
        transition: 1s
        animation: wave infinite reverse 80s
    &:nth-child(2)
        grid-area: a
        transition: 1s
        animation: wave infinite 70s
    &:nth-child(3)
        grid-area: a
        transition: 1s
        animation: wave infinite reverse 50s
@keyframes wave
    0%
        transform: translateX(0px) translateY(0px)
    50%
        transform: translateX(-100vw) translateY(0px)
    100%
        transform: translateY(0px) translateX(0px)

</style>

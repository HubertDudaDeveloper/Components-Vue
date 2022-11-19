<template>
    <section class="hero d-grid mb-5 mt-5 vh-100 col-12">
        <img src="https://picsum.photos/1920/1080" class="col-12"/>
        <div class="shadow col-12"></div>
        <section class="hero__container col-12 d-flex flex-column flex-sm-row justify-content-evenly justify-content-sm-between align-items-center row" >
            <section class="col-8 d-flex flex-column align-items-center text-white">
                <h2>
                Zapoznaj się z ofertą!
                </h2>
                <ButtonComponent
                    :label="'Cennik'"
                    :customClass="'p-2 m-5 glass p-5 text-white'"
                    :customStyle="'font-size:2.5rem;line-height:0px;'"
                />
            </section>
            <section class="col-4 d-flex gap-sm-1 gap-5 flex-row-reverse flex-sm-column justify-content-center align-items-center text-white">
                <ButtonComponent
                    :label="'→'"
                    :customClass="'diamond p-5 m-2 m-sm-5 glass text-white'"
                    :customStyle="'font-size:2.5rem;line-height:0px;rotate:45deg;'"
                />
                <ButtonComponent
                    :label="'←'"
                    :customClass="'diamond p-5 m-2 m-sm-5 glass text-white'"
                    :customStyle="'font-size:2.5rem;line-height:0px;rotate:45deg;'"
                />
            </section>
        </section>
    </section>
</template>
<script setup lang="ts">
import { defineComponent } from 'vue'
import ButtonComponent from './ButtonComponent.vue'
import { BIconArrowUp } from 'bootstrap-vue'

</script>
<style lang="sass">
@import './../assets/partial/_typography'

.hero
    grid-template-areas: "a"
    section,
    img,
    div
        grid-area: a
        font-size: 2em
        text-shadow: 10px 10px 10px black
    .shadow
        background: black
        opacity: 0.5
        z-index: 2
    img
        z-index: 1
        object-fit: cover
        height: 100%
    section
        z-index: 3
        font-weight: italic
        font-family: $text-marri
.diamond
    position: relative
    span
        rotate: -45deg
        position: absolute
        padding: 0
        margin: 0
        top: 50%
        left: 25%

</style>

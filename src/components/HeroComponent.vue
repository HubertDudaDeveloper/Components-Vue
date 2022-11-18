<template>
    <section class="hero d-grid mb-5 mt-5 vh-100">
        <img src="https://picsum.photos/1920/1080" class="col-12"/>
        <div class="shadow col-12"></div>
        <section class=" col-12 d-flex justify-content-between align-items-center row" >
            <section class="col-6 d-flex justify-content-center align-items-center text-white">
                <strong>test</strong>
            </section>
            <section class="col-6 d-flex flex-column justify-content-center align-items-center text-white">
                <strong>test 2</strong>
                <ButtonComponent
                    :label="'Klik!'"
                    :customClass="'p-2 m-5 col-3 glass'"
                />
            </section>
        </section>
    </section>
</template>
<script setup lang="ts">
import ButtonComponent from './ButtonComponent.vue'
</script>
<style lang="sass">
.hero
    grid-template-areas: a
    section,
    img,
    div
        grid-area: a
        font-size: 2.5em
        text-shadow: 10px 10px 10px black
    .shadow
        background: black
        opacity: 0.5
        z-index: 2
    img
        z-index: 1
    section
        z-index: 3
</style>

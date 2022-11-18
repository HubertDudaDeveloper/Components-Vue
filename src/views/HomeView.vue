<template>
  <main class="home d-flex flex-wrap flex-column gap-2 col-12">
    <ButtonComponent
    v-for="(item, index) in buttonComponent"
    :key="index"
    :customStyle="item.style"
    :customClass="item.class "
    :label="item.label"
    :disabled="item.disabled"
    />
    <InputComponent
    v-for="(item, index) in inputComponent"
    :key="index"
    :function="item.click"
    :customStyle="item.style"
    :customClass="item.class"
    :label="item.label"
    :required="item.required"
    :type="item.type"
    :id="'input_' + index"
    :disabled="item.disabled"
    />
    <SelectComponent
    v-for="(item, index) in selectComponent"
    :key="index"
    :function="item.click"
    :customStyle="item.style"
    :customClass="item.class"
    :label="item.label"
    :option="item.option"
    :required="item.required"
    :id="'select_' + index"
    :disabled="item.disabled"
    />
    <TitleComponent
    v-for="(item, index) in titleComponent"
    :key="index"
    :customStyle="item.style"
    :customClass="item.class"
    :label="item.label"
    :color="item.color"
    :id="'title_' + index"
    />
    <CarouselComponent
    v-for="(item, index) in carouselComponent"
    :key="index"
    :customStyle="item.style"
    :customClass="item.class"
    :label="item.label"
    :slide="item.slide"
    :id="'carousel_' + index"
    />
    <HexagonComponent
    />
    <WavesComponent
    v-for="(item, index) in wavesComponent"
    :key="index"
    :color="item.color"
    :directiong="item.direction"
    :id="'waves_' + index"
    />
    <LightboxComponent
    v-for="(item, index) in lightboxComponent"
    :key="index"
    :customStyle="item.style"
    :customClass="item.class"
    :gallery="item"
    :images="item.images"
    :image="item.images.image"
    :label="item.label"
    :id="'lightbox_' + index"
    />
    <FormComponent
    v-for="(item, index) in formComponent"
    :key="index"
    :label="item.label"
    :inputs="item.inputs"
    :selects="item.selects"
    :buttons="item.buttons"
    :id="'form_' + index"
    />
    <HeroComponent
    />
  </main>
</template>

<script setup lang="ts">
import { ref, computed, reactive } from 'vue'
import { Options, Vue } from 'vue-class-component'
import ButtonComponent from '@/components/ButtonComponent.vue'
import InputComponent from '@/components/InputComponent.vue'
import WrapperComponent from '@/components/WrapperComponent.vue'
import TitleComponent from '@/components/TitleComponent.vue'
import SelectComponent from '@/components/SelectComponent.vue'
import CarouselComponent from '@/components/CarouselComponent.vue'
import WavesComponent from '@/components/WavesComponent.vue'
import HexagonComponent from '@/components/HexagonComponent.vue'
import LightboxComponent from '@/components/LightboxComponent.vue'
import FormComponent from '@/components/FormComponent.vue'
import HeroComponent from '@/components/HeroComponent.vue'

import inputComponent from './../structure/dataInputComponent.json'
import buttonComponent from './../structure/dataButtonComponent.json'
import selectComponent from './../structure/dataSelectComponent.json'
import carouselComponent from './../structure/dataCarouselComponent.json'
import titleComponent from './../structure/dataTitleComponent.json'
import wavesComponent from './../structure/dataWavesComponent.json'
import lightboxComponent from './../structure/dataLightboxComponent.json'
import formComponent from './../structure/dataFormComponent.json'

const state = reactive({
})

const ok = () => {
  alert('test')
}

</script>

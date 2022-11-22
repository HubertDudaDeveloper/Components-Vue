<template>
  <main class="home d-flex flex-wrap flex-column gap-2 col-12">
    <ButtonComponent
    v-for="(item, index) in buttonComponent"
    :key="'buton_' + index"
    :customStyle="item.style"
    :customClass="item.class "
    :label="item.label"
    :disabled="item.disabled"
    />
    <InputComponent
    v-for="(item, index) in inputComponent"
    :key="'input_' + index"
    :function="item.click"
    :customStyle="item.style"
    :customClass="item.class"
    :label="item.label"
    :required="item.required"
    :type="item.type"
    :id="index"
    :disabled="item.disabled"
    />
    <SelectComponent
    v-for="(item, index) in selectComponent"
    :key="'select_' + index"
    :function="item.click"
    :customStyle="item.style"
    :customClass="item.class"
    :label="item.label"
    :option="item.option"
    :required="item.required"
    :id="index"
    :disabled="item.disabled"
    />
    <TitleComponent
    v-for="(item, index) in titleComponent"
    :key="'title_' + index"
    :customStyle="item.style"
    :customClass="item.class"
    :label="item.label"
    :color="item.color"
    :id="index"
    />
    <CarouselComponent
    v-for="(item, index) in carouselComponent"
    :key="'carousel_' + index"
    :customStyle="item.style"
    :customClass="item.class"
    :label="item.label"
    :slide="item.slide"
    :id="index"
    />
    <HexagonComponent
    />
    <WavesComponent
    v-for="(item, index) in wavesComponent"
    :key="'waves_' + index"
    :color="item.color"
    :directiong="item.direction"
    :id="index"
    />
    <LightboxComponent
    v-for="(item, index) in lightboxComponent"
    :key="'lightbox_' + index"
    :customStyle="item.style"
    :customClass="item.class"
    :gallery="item"
    :images="item.images"
    :image="item.images.image"
    :label="item.label"
    :id="index"
    />
    <FormComponent
    v-for="(item, index) in formComponent"
    :key="'form_' + index"
    :label="item.label"
    :inputs="item.inputs"
    :selects="item.selects"
    :buttons="item.buttons"
    :consent="item.consent"
    :id="index"
    />
    <div class="position-relative">
      <HeroComponent
        v-for="(item, index) in heroComponent"
        :key="'hero_' + index"
        class="position-absolute"
        :title="item.title"
        :p="item.p"
        :button="item.button"
        :img="item.img"
        :id="index"
      />
    </div>
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
import heroComponent from './../structure/dataHeroComponent.json'

const state = reactive({
})

const ok = () => {
  alert('test')
}

</script>

<template>
  <main class="home d-flex flex-wrap flex-column gap-2">
    <ButtonComponent
    v-for="(item, index) in state.buttonComponent"
    :key="index"
    v-on:click="item.click"
    :customStyle="item.style"
    :customClass="item.class "
    :label="item.label"
    :disabled="item.disabled"
    />
    <InputComponent
    v-for="(item, index) in state.inputComponent"
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
    v-for="(item, index) in state.selectComponent"
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
    v-for="(item, index) in state.titleComponent"
    :key="index"
    :customStyle="item.style"
    :customClass="item.class"
    :label="item.label"
    :color="item.color"
    :id="'title_' + index"
    />
    <CarouselComponent
    v-for="(item, index) in state.carouselComponent"
    :key="index"
    :customStyle="item.style"
    :customClass="item.class"
    :label="item.label"
    :slide="item.slide"
    :id="'carousel_' + index"
    />
    <WavesComponent
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
const ok = () => {
  alert('test')
}

const state = reactive({
  buttonComponent: [
    {
      label: 'Wyślij',
      click: 'ok()',
      class: 'col-3 btn-dark',
      style: '',
      disabled: true
    },
    {
      label: 'Wyślij',
      click: 'ok()',
      class: 'col-3 btn-warning',
      style: ''
    },
    {
      label: 'Wyślij',
      click: 'ok()',
      class: 'col-3 btn-danger',
      style: ''
    },
    {
      label: 'Wyślij',
      click: 'ok()',
      class: 'col-3 btn-success',
      style: ''
    },
    {
      label: 'Wyślij',
      click: 'ok()',
      class: 'col-3 btn glass',
      style: ''
    },
    {
      label: 'Wyślij',
      click: 'ok()',
      class: 'col-3 btn-primary',
      style: ''
    }
  ],
  inputComponent: [
    {
      click: 'ok()',
      style: 'cursor: pointer',
      class: 'col-6',
      label: 'Text',
      required: true,
      type: 'text',
      disabled: true
    },
    {
      click: 'ok()',
      style: 'cursor: pointer',
      class: 'col-1',
      label: 'Text',
      required: true,
      type: 'checkbox'
    },
    {
      click: 'ok()',
      style: 'cursor: pointer',
      class: 'col-6',
      label: 'email',
      required: true,
      type: 'email'
    },
    {
      click: 'ok()',
      style: 'cursor: pointer',
      class: 'col-6',
      label: 'imie',
      required: true,
      type: 'name'
    },
    {
      click: 'ok()',
      style: 'cursor: pointer',
      class: 'col-6',
      label: 'numer',
      required: true,
      type: 'number'
    },
    {
      click: 'ok()',
      style: 'cursor: pointer',
      class: 'col-6',
      label: 'data',
      required: true,
      type: 'date'
    },
    {
      click: 'ok()',
      style: 'cursor: pointer',
      class: 'col-6',
      label: 'data',
      required: true,
      type: 'range'
    },
    {
      click: 'ok()',
      style: 'cursor: pointer',
      class: 'col-6',
      label: 'color',
      required: true,
      type: 'color'
    }
  ],
  selectComponent: [
    {
      click: 'ok()',
      style: 'cursor: pointer',
      class: 'col-6',
      label: 'Text',
      required: true,
      disabled: true,
      option: [
        {
          value: '1'
        },
        {
          value: '2'
        },
        {
          value: '3'
        }
      ]
    },
    {
      click: 'ok()',
      style: 'cursor: pointer',
      class: 'col-1',
      label: 'Text',
      required: true,
      option: [
        {
          value: '4'
        },
        {
          value: '5'
        },
        {
          value: '6'
        }
      ]
    },
    {
      click: 'ok()',
      style: 'cursor: pointer',
      class: 'col-6',
      label: 'email',
      option: [
        {
          value: '7'
        },
        {
          value: '8'
        },
        {
          value: '9'
        }
      ]
    }
  ],
  titleComponent: [
    {
      class: '',
      style: '',
      label: 'Tytuł 1',
      color: 'red'
    },
    {
      class: '',
      style: '',
      label: 'Tytuł 2',
      color: 'blue'
    },
    {
      class: '',
      style: '',
      label: 'Tytuł 3',
      color: 'green'
    }
  ],
  carouselComponent: [
    {
      class: 'bg-dark text-warning',
      style: '',
      label: 'Tytuł 1',
      slide: [
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        },
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        },
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        }
      ]
    },
    {
      class: 'bg-primary text-white',
      style: '',
      label: 'Tytuł 1',
      slide: [
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        },
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        },
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        },
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        },
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        },
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        }
      ]
    },
    {
      class: '',
      style: '',
      label: 'Tytuł 1',
      slide: [
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        },
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        },
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        },
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        },
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        },
        {
          icon: 'https://picsum.photos/500',
          name: 'Iwona',
          description: 'Bardzo polecam schudłam w tydzień 1%!',
          date: '2012-12-12 20:20'
        }
      ]
    }
  ]
})
</script>

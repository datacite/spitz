<template>
  <div class="metrics">
    <v-badge v-if="citations > 0">
      <template v-slot:badge>
        {{ citations }}
      </template>
      <v-icon>mdi-format-quote-close</v-icon>
    </v-badge>
    <v-badge v-if="views > 0">
      <template v-slot:badge>
        {{ views }}
      </template>
      <v-icon>mdi-eye-outline</v-icon>
    </v-badge>
    <v-badge v-if="downloads > 0">
      <template v-slot:badge>
        {{ downloads }}
      </template>
      <v-icon>mdi-download-outline</v-icon>
    </v-badge>
    <!-- :href="link + '#citations-tab'" -->
  </div>
</template>

<script>
import { VBadge, VIcon } from 'vuetify/lib';
import BaseWidget from '@/models/BaseWidget.vue';

export default {
  name: 'MediumWidget',
  components: {
    'v-badge': VBadge,
    'v-icon': VIcon,
  },
  extends: BaseWidget,
};
</script>

<style scoped>
/*! CSS Used from: Embedded */
 .primary{background-color:#1867c0!important;border-color:#1867c0!important;}
/*! CSS Used from: https://vuetifyjs.com/dist/common.3217c3377db00ba0a84d.css */
.v-badge__badge{align-items:center;border-radius:11px;color:#FFFFFF;display:inline-flex;flex-direction:row;flex-wrap:wrap;font-size:14px;height:22px;justify-content:center;line-height:normal;min-width:22px;padding:0 4px;position:absolute;top:-11px;transition:0.3s cubic-bezier(0.25, 0.8, 0.5, 1);}
--is-ltr .v-badge__badge{right:-22px;}
*,::before,::after{box-sizing:inherit;}
::before,::after{text-decoration:inherit;vertical-align:inherit;}
*{background-repeat:no-repeat;padding:0;margin:0;}
::-moz-selection{background-color:#b3d4fc;color:#000;text-shadow:none;}
::selection{background-color:#b3d4fc;color:#000;text-shadow:none;}
 ::-ms-clear, ::-ms-reveal{display:none;}
</style>

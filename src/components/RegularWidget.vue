<template>
  <div class="container">
    <div class="row">
      <div class="col-4">
        <div class="row">
          <div>
            <v-badge class="align-self-center">
              <template
                v-if="(['', '0',0].includes(citations) == false)"
                v-slot:badge
              >
                {{ formatNumbers(citations) }}
              </template>
              <!-- <v-icon>
                mdi-format-quote-close
              </v-icon> -->
              <a :href="link + '#citations-tab'">
                <citationIcon :class="(['', '0',0].includes(citations) == false) ? activeClass : inactiveClass" />
              </a>
            </v-badge>
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="row">
          <div>
            <v-badge class="align-self-center">
              <template
                v-if="['', '0',0].includes(views) == false"
                v-slot:badge
              >
                {{ formatNumbers(views) }}
              </template>
              <!-- <v-icon>
                mdi-eye-outline
              </v-icon> -->
              <a :href="link + '#citations-tab'">
                <viewIcon :class="(['', '0',0].includes(views) == false) ? activeClass : inactiveClass" />
              </a>
            </v-badge>
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="row">
          <div>
            <v-badge class="align-self-center">
              <template
                v-if="['', '0',0].includes(downloads) == false"
                v-slot:badge
              >
                {{ formatNumbers(downloads) }}
              </template>
              <!-- <v-icon>
                mdi-download
              </v-icon> -->
              <a :href="link + '#downloads-tab'">
                <downloadIcon :class="(['', '0',0].includes(downloads) == false) ? activeClass : inactiveClass" />
              </a>
            </v-badge>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { VBadge } from 'vuetify/lib';
import BaseWidget from '@/models/BaseWidget.vue';

export default {
  name: 'RegularWidget',
  components: {
    'v-badge': VBadge,
  },
  extends: BaseWidget,
  data() {
    return {
      activeClass: 'icon-metrics',
      inactiveClass: 'icon-metrics-empty',
    };
  },
};
</script>

<style>

.v-badge__badge {
  align-items: center;
  border-radius: 11px;
  color: #ffffff;
  display: inline-flex;
  flex-direction: row;
  flex-wrap: wrap;
  font-size: 14px;
  font-family: "Helvetica";
  height: 22px;
  justify-content: center;
  line-height: normal;
  min-width: 22px;
  padding: 0 4px;
  position: absolute;
  top: -11px;
  transition: 0.3s cubic-bezier(0.25, 0.8, 0.5, 1);
  background-color: rgba(255, 0, 0) !important;
  border-color: rgba(255, 0, 0) !important;
}
--is-ltr .v-badge__badge {
  right: -22px;
}
*,
::before,
::after {
  box-sizing: inherit;
}
::before,
::after {
  text-decoration: inherit;
  vertical-align: inherit;
}
* {
  background-repeat: no-repeat;
  padding: 0;
  margin: 0;
}
::-moz-selection {
  background-color: #b3d4fc;
  color: #000;
  text-shadow: none;
}
::selection {
  background-color: #b3d4fc;
  color: #000;
  text-shadow: none;
}
::-ms-clear,
::-ms-reveal {
  display: none;
}

/*! CSS Used from: Embedded */
.icon-metrics {
  width: 46px;
  height: 46px;
  display: inline-block;
  color: rgba(0, 89, 173);
  stroke: rgba(0, 89, 173);
  fill: rgba(0, 89, 173);
}
.icon-metrics-empty {
  width: 46px;
  height: 46px;
  display: inline-block;
  color: gray;
  stroke:gray;
  fill: gray;
}


  @import url("//unpkg.com/bootstrap/dist/css/bootstrap.min.css");


</style>

<template>
  <div class="container">
    <div class="row">
      <div class="col-4">
        <div class="row">
          <div class="col-2 ">
            <v-badge
              dark
              class="align-self-center"
            >
              <template v-slot:badge>
                {{ formatNumbers(citations) }}
              </template>
              <!-- <v-icon>
                mdi-format-quote-close
              </v-icon> -->
              <citationIcon class="icon-metrics" />
            </v-badge>
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="row">
          <div class="col-2">
            <v-badge
              dark
              class="align-self-center"
            >
              <template v-slot:badge>
                {{ formatNumbers(views) }}
              </template>
              <!-- <v-icon>
                mdi-eye-outline
              </v-icon> -->
              <viewIcon class="icon-metrics" />
            </v-badge>
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="row">
          <div class="col-2">
            <v-badge
              dark
              class="align-self-center"
            >
              <template v-slot:badge>
                {{ formatNumbers(downloads) }}
              </template>
              <!-- <v-icon>
                mdi-download
              </v-icon> -->
              <downloadIcon class="icon-metrics" />
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
  methods: {
    // eslint-disable-next-line vue/return-in-computed-property

  },
};
</script>

<style>
/*! CSS Used from: Embedded */
.primary {
  background-color: rgba( 255, 89, 0) !important;
  border-color: rgba( 255, 89, 0) !important;
}
/*! CSS Used from: https://vuetifyjs.com/dist/common.3217c3377db00ba0a84d.css */
/* eslint-disable max-len */
.v-badge__badge {
  align-items: center;
  border-radius: 11px;
  color: #ffffff;
  display: inline-flex;
  flex-direction: row;
  flex-wrap: wrap;
  font-size: 14px;
  height: 22px;
  justify-content: center;
  line-height: normal;
  min-width: 22px;
  padding: 0 4px;
  position: absolute;
  top: -11px;
  transition: 0.3s cubic-bezier(0.25, 0.8, 0.5, 1);
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

/*! CSS Used from: https://cdn.jsdelivr.net/npm/@mdi/font@latest/css/materialdesignicons.min.css */
.mdi:before {
  display: inline-block;
  font: normal normal normal 24px/1 "Material Design Icons";
  font-size: inherit;
  text-rendering: auto;
  line-height: inherit;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.mdi-format-quote-close::before {
  content: "\F27E";
}
/*! CSS Used from: Embedded */
.theme--light.v-icon {
  color: rgba( 0, 89, 173);
}
.v-icon.v-icon {
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  display: -webkit-inline-box;
  display: -ms-inline-flexbox;
  display: inline-flex;
  -webkit-font-feature-settings: "liga";
  font-feature-settings: "liga";
  font-size: 58px;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  letter-spacing: normal;
  line-height: 1;
  text-indent: 0;
  -webkit-transition: 0.3s cubic-bezier(0.25, 0.8, 0.5, 1);
  transition: 0.3s cubic-bezier(0.25, 0.8, 0.5, 1);
  vertical-align: middle;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
/*! CSS Used from: Embedded */
*,
::before,
::after {
  -webkit-box-sizing: inherit;
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
/*! CSS Used from: Embedded */
*,
::before,
::after {
  -webkit-box-sizing: inherit;
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
/*! CSS Used fontfaces */
@font-face {
  font-family: "Material Design Icons";
  src: url("https://cdn.jsdelivr.net/npm/@mdi/font@latest/fonts/materialdesignicons-webfont.eot?v=4.6.95");
  src: url("https://cdn.jsdelivr.net/npm/@mdi/font@latest/fonts/materialdesignicons-webfont.eot#iefix&v=4.6.95")
      format("embedded-opentype"),
    url("https://cdn.jsdelivr.net/npm/@mdi/font@latest/fonts/materialdesignicons-webfont.woff2?v=4.6.95")
      format("woff2"),
    url("https://cdn.jsdelivr.net/npm/@mdi/font@latest/fonts/materialdesignicons-webfont.woff?v=4.6.95")
      format("woff"),
    url("https://cdn.jsdelivr.net/npm/@mdi/font@latest/fonts/materialdesignicons-webfont.ttf?v=4.6.95")
      format("truetype");
  font-weight: normal;
  font-style: normal;
}


/*! CSS Used from: Embedded */
.icon-metrics{width:36px;height:36px;display:inline-block;color: rgba( 0, 89, 173);}


</style>

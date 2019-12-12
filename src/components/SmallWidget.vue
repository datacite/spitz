<template>
  <!-- <div :title="tooltip">
    <smallBadge class="small-badge" :alt="this.alt" />
    <a v-if="views > 0" :href="link + '#views-tab'"> {{ views }} Views </a>
    <a v-if="downloads > 0" :href="link + '#downloads-tab'">
      {{ downloads }} Downloads
    </a>
    <a v-if="citations > 0" :href="link + '#citations-tab'">
      {{ citations }} Citations
    </a>
  </div> -->

  <!-- <div class="small-container">
    <div class="row">
      <div class="col-3">
        <div class="row">
          <div class="col-2 col-lg-5"></div>
          <div class="col-lg-6 col-10 ml-1">
             <logo/>
          </div>
        </div>
      </div>
      <div class="col-3">
        <div class="row">
          <div class="col-3 label">Citations</div>
          <div class="col-3 counts justify-content-center">
            <p>{{ citations }}</p>
          </div>
        </div>
      </div>
      <div class="col-3">
        <div class="row">
          <div class="col-3 label">Views</div>
          <div class="col-3 counts justify-content-center">
            <p>{{ views }}</p>
          </div>
        </div>
      </div>
      <div class="col-3">
        <div class="row">
          <div class="col-3 label">Downloads</div>
          <div class="col-3 counts justify-content-center">
            <p>{{ downloads }}</p>
          </div>
        </div>
      </div>
    </div>
  </div> -->

  <div class="small-container">
    <div class="d-flex">
      <div class="p-2 logo">
        <logo :class="'svglogo'" />
      </div>
      <div class="p-2 label">Citations</div>
      <div class="p-2 counts">
        <p>{{ citations }}</p>
      </div>
      <div class="p-2 label">Views</div>
      <div class="p-2 counts">
        <p>{{ views }}</p>
      </div>
      <div class="p-2 label">Downloads</div>
      <div class="p-2 counts">
        <p>{{ downloads }}</p>
      </div>
    </div>
  </div>
</template>

<script>
import BaseWidget from "@/models/BaseWidget.vue";

export default {
  name: "SmallWidget",
  extends: BaseWidget
};
</script>

<style scoped>
a {
  font-size: 8px;

  /* display: table-cell; */
  width: 80px;
  height: 9px;
  /* padding: 10px; */
  /* border: 3px dashed #1c87c9; */
  vertical-align: middle;
}

.small-badge {
  width: 50px;
  height: 60px;
  vertical-align: middle;

  /* display:table-cell; */
}

div.label {
  background-color: gray;
  height: auto;
  display: table;
  width: 5em;
  color: white;
}

div.logo {
  height: auto;
  display: table;
  width: 10em;
}

.svglogo {
  height: 30px;
}

div.counts {
  background-color: white;
  line-height: 8px;

  display: table;
  width: 3em;
  height: auto;
}

div.small-container {
  display: table;
  width: 40em;
  line-height: 8px;
  padding: 5px 3px 5px 3px;
}

div.small-container div[class^="col-"],
div[class*=" col-"] {
  display: table;
  width: 10em;
  line-height: 8px;
  vertical-align: middle;
}

div.small-container div.row {
  /* display: table; */
  /* width: 10em; */
}
</style>

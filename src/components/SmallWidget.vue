<template>
  <div class="small-container">
    <div class="d-flex">
      <logo :class="'svglogo'" />
      <div class="p-2 label">Citations</div>
      <div class="p-2 counts">
        {{ citations }}
      </div>
      <div class="p-2 label">Views</div>
      <div class="p-2 counts">
        {{ views }}
      </div>
      <div class="p-2 label">Downloads</div>
      <div class="p-2 counts">
        {{ downloads }}
      </div>
    </div>
  </div>
</template>

<script>
import BaseWidget from '@/models/BaseWidget.vue';

export default {
  name: 'SmallWidget',
  extends: BaseWidget,
};
</script>

<style scoped>
div.label {
  background-color:#78909c;
  /* height: auto; */
  display: table;
  width: 8%;
  color: white;
  font-size: 2.5vh;
}

div.logo {
  padding: 0px 0px 0px 0px;
}

.svglogo {
  color: #455a64;
  fill: #455a64;
  display: table;
  width: 20%;
}

div.counts {
  background-color: white;
  /* line-height: 8px; */
  font-size: 2.5vh;

  display: table;
  width: 8%;
  /* height: auto; */
}

.p-2 {
  padding: .3rem!important;
}

div.small-container {
  display: table;
  width: 400px;
  padding: 5px 3px 5px 3px;
}
</style>

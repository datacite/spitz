<template>
  <div class="small-container" :title="'Metrics for DOI: ' + doi">
    <div class="d-flex">
      <logo :class="'svglogo'" />
      <div class="p-2 label">Citations</div>
      <div class="p-2 counts" :title="pluralize(citations,'Citation')">
        {{ citations }}
      </div>
      <div class="p-2 label">Views</div>
      <div class="p-2 counts" :title="pluralize(views,'View')">
        {{ views }}
      </div>
      <div class="p-2 label">
        Downloads
      </div>
      <div class="p-2 counts" :title="pluralize(downloads,'Download')">
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
  font-size: 8px;
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
  font-size: 8px;


  display: table;
  width: 8%;
  /* height: auto; */
}


/* div.small-container {
  display: table;
  width: 400px;
  padding: 5px 3px 5px 3px;
} */
.small-container {
  width: 400px;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
  font-family:Arial, Helvetica, sans-serif
}

  /* @import url("//unpkg.com/bootstrap/dist/css/bootstrap.min.css"); */

.d-flex {
  display: -ms-flexbox !important;
  display: flex !important;
}

.p-2 {
  padding: .3rem!important;
}

.row {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-right: -15px;
  margin-left: -15px;
}

</style>

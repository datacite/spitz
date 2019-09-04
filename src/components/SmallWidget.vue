<template>
  <div v-bind:title=tooltip>
     <smallBadge class="small-badge" v-bind:alt="this.alt" />  
      <a v-if="views > 0"  v-bind:href="link+'#views-tab'">
        {{views}} Views
      </a>
      <a v-if="downloads > 0" v-bind:href="link+'#downloads-tab'">
        {{downloads}} Downloads
      </a>
      <a v-if="citations > 0"  v-bind:href="link+'#citations-tab'"> 
        {{citations}} Citations
      </a>
  </div>
</template>

<script>

import BaseWidget from '@/models/BaseWidget.vue'

export default {
  name: 'SmallWidget',
  extends: BaseWidget
}
</script>

<style scoped>
  a{
    font-size: 13px;
    
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
</style>

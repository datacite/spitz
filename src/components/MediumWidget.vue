<template>
  <div class="metrics">


    <div class="wrapper" v-bind:title=tooltip>
      <div>
        <!-- <img src="../assets/medium_widget.png" v-bind:alt="this.alt"> -->
        <mediumBadge class="medium-badge" v-bind:alt="this.alt" /> 
      </div>

      <div class="metrics">
        <a v-if="views > 0" class="usage-counts usage-views" v-bind:href="link+'#views-tab'">
          <viewIcon class="icon-metrics" /> 
          {{views}} Views<br/>
        </a>
        
        <a v-if="downloads > 0" class="usage-counts usage-downloads" v-bind:href="link+'#downloads-tab'">
          <downloadIcon class="icon-metrics" />
          {{downloads}} Downloads<br/>
        </a>
        
        <a v-if="citations > 0" class="usage-counts usage-downloads" v-bind:href="link+'#citations-tab'">
          <citationIcon class="icon-metrics" />  

          {{citations}} Citations<br/>
        </a>
        
      </div>
    </div>
  </div>

</template>

<script>

import BaseWidget from '@/models/BaseWidget.vue'

export default {
  name: 'MediumWidget',
  extends: BaseWidget
}
</script>



<style scoped>
.wrapper {
  display: grid;
  text-align: left;
  grid-template-columns: 133px max-content 5px;
}

.metrics {
  padding-top: 20px;
}

.medium-badge {
  width: 140px;
  height: 140px;
  display: block;
  margin: auto;
  /* margin-right: 3px; */
  
  /* display:inline-block; */
}

</style>

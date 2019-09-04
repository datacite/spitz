<template>
<div>
      <div v-if="doi">
      <div v-if="display == 'small'">
        <SmallWidget v-bind:doi="doi" v-bind:display="display" v-bind:data-input="dataObject"/>
      </div>
      <div v-if="display == 'medium'">
        <MediumWidget v-bind:doi="doi" v-bind:display="display" v-bind:data-input="dataObject"/>
      </div>
      <div v-if="display == 'datacite'">
        <DataCiteWidget v-bind:doi="doi" v-bind:display="display" v-bind:data-input="dataObject"/>
      </div>
        </div> 
    <a v-else>There is no DOI</a>
    </div>
</template>

<script>

import SmallWidget from './SmallWidget.vue'
import MediumWidget from './MediumWidget.vue'
import DataCiteWidget from './DataCiteWidget.vue'

export default {
  name: 'DataMetricsBadge',
  funtional: true,
  components:{
    MediumWidget,
    SmallWidget,
    DataCiteWidget
  },
  props: {
    dataInput: {
      type: String
    },
    doi: {
      type: String
    },
    display: {
      type: String,
      required: false,
      validator: function (value) {
        return ["small","medium","datacite"].indexOf(value) > -1
      },
      default: "small"
    }
  },
  computed: {
    dataObject(){
      if(typeof this.dataInput != "undefined"){
        return JSON.parse(this.dataInput)
      }
      return null
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>

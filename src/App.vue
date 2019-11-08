<template>
  <div id="app">
    <DataMetricsBadge doi="10.7272/q6g15xs4" display="small"/>
    <br/>
    <DataMetricsBadge doi="10.7272/q6g15xs4" display="medium"/>
    <br/>

    <DataMetricsBadge doi="10.7272/q6g15xs4" display="datacite"/>
    <br/>
  <DataMetricsBadge doi="10.7272/q6g15xsd4" display="datacite"/>
    <br/>

    <DataMetricsBadge doi="10.7272/q6g15xs4"/>

    <br/>

    <DataMetricsBadge doi="10.7272/q6g15xs4" display="medium" data-input='{"views": 77, "downloads":8, "citations":244324, "crossref":500}'/>
    <DataMetricsBadge doi="10.7272/q6g15xs4" display="datacite" data-input='{"views": 0, "downloads":0, "citations":244324, "crossref":500}'/>

    <br/>

    <DataMetricsBadge doi="" display="small" data-input='{"views": 77, "downloads":8, "citations":244324, "crossref":500}'/>

  </div>
</template>

<script>

import DataMetricsBadge from './components/DataMetricsBadge.vue'

export default {
  name: 'app',
  components: {
    DataMetricsBadge
  }
}
</script>

<style>
#app {
  /* font-family: 'Avenir', Helvetica, Arial, sans-serif; */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>

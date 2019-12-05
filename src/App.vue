/* eslint-disable max-len */
<template>
  <div id="app">
    <DataMetricsBadge
      doi="10.7272/q6g15xs4"
      display="small"
    />
    <br>
    <DataMetricsBadge
      doi="10.7272/q6g15xs4"
      display="medium"
    />
    <br>

    <DataMetricsBadge
      doi="10.7272/q6g15xs4"
      display="datacite"
    />
    <br>
    <DataMetricsBadge
      doi="10.7272/q6g15xsd4"
      display="regular"
    />
    <br>

    <DataMetricsBadge doi="10.7272/q6g15xs4" />

    <br>

    <DataMetricsBadge
      doi="10.7272/q6g15xs4"
      display="medium"
      data-input="{&quot;views&quot;: 77, &quot;downloads&quot;:8, &quot;citations&quot;:244324, &quot;crossref&quot;:500}"
    />
    <DataMetricsBadge
      doi="10.7272/q6g15xs4"
      display="datacite"
      data-input="{&quot;views&quot;: 0, &quot;downloads&quot;:0, &quot;citations&quot;:244324, &quot;crossref&quot;:500}"
    />

    <br>

    <DataMetricsBadge
      doi=""
      display="small"
      data-input="{&quot;views&quot;: 77, &quot;downloads&quot;:8, &quot;citations&quot;:244324, &quot;crossref&quot;:500}"
    />
  </div>
</template>

<script>
import DataMetricsBadge from './components/DataMetricsBadge.vue';

export default {
  name: 'App',
  components: {
    DataMetricsBadge,
  },
};
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

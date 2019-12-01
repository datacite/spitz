<template>
  <div class="chart">
    <vega-lite :spec="spec" />
  </div>
</template>

<script>
export default {
  name: 'ChartTimeDistribution',
  props: {
    doi: {
      required: true,
      type: String,
    },
    // eslint-disable-next-line vue/prop-name-casing
    chart_enable: {
      required: false,
      type: Boolean,
    },
    dataInput: {
      required: true,
      type: Object,
    },
  },
  data() {
    return {
      title: 'Mychart dot com',
    };
  },
  computed: {
    link() {
      return `https://search.datacite.org/works/${this.doi }#views-tab`;
    },
    spec() {
      return {
        $schema: 'https://vega.github.io/schema/vega-lite/v3.json',
        description: 'A simple bar chart with embedded data.',
        selection: {
          grid: {
            type: 'interval',
            bind: 'scales',
          },
        },
        data: {
          values: this.dataInput.dataInputApi,
        },
        axes: [
          { orient: 'bottom', scale: 'xscale', tickCount: 5 },
          {
            orient: 'left',
            scale: 'yscale',
            tickCount: 5,
            labelFont: "'Raleway', 'Helvetica', Arial, sans-serif",
          },
        ],
        mark: {
          type: 'bar',
          tooltip: { content: 'data' },
        },
        width: 500,
        encoding: {
          x: {
            field: 'id',
            type: 'temporal',
            timeUnit: 'yearmonth',
            title: 'ddddss',
            axis: { grid: false },
          },
          y: { field: 'sum', type: 'quantitative', title: 'ddd' },
          // "tooltip": {"field": "sum", "type": "quantitative"}
        },
      };
    },
  },
  mounted() {
    // if(this.dataInput.size == 0){
    // getMetrics()
    // }
  },
  methods: {
    getMetrics() {},
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped></style>

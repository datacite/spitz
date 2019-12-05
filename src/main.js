import Vue from 'vue';
import VueVega from 'vue-vega';
import App from './App.vue';
// import vuetify from './plugins/vuetify';


Vue.use(VueVega);


Vue.config.productionTip = false;

new Vue({
  // vuetify,
  render: (h) => h(App),
}).$mount('#app');

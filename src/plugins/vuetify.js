import Vue from 'vue';
// import Vuetify from 'vuetify/lib';

// Vue.use(Vuetify);

// export default new Vuetify({
// });


// import Vue from 'vue'
import Vuetify, {
  VBadge,
  VIcon,
  VApp,
} from 'vuetify/lib';
import { Ripple } from 'vuetify/lib/directives';
import colors from 'vuetify/lib/util/colors';

Vue.use(Vuetify, {
  components: {
    VBadge,
    VIcon,
    VApp,
  },
  directives: {
    Ripple,
  },
});

const opts = {
  theme: {
    themes: {
      light: {
        primary: colors.red.darken1, // #E53935
        secondary: colors.red.lighten4, // #FFCDD2
        accent: colors.indigo.base, // #3F51B5
      },
    },
  },
};

export default new Vuetify(opts);

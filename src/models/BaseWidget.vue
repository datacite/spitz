
<script>

import gql from 'graphql-tag'

import viewIcon from '@/assets/viewIcon.svg';
import downloadIcon from '@/assets/downloadIcon.svg';
import citationIcon from '@/assets/citationIcon.svg';
import smallBadge from '@/assets/smallBadge.svg';
import mediumBadge from '@/assets/mediumBadge.svg';
import ApolloClient from 'apollo-boost'

const apolloClient = new ApolloClient({
  // You should use an absolute URL here
  uri: 'https://api.datacite.org/graphql'
})

import VueApollo from 'vue-apollo'

// Vue.use(VueApollo)

const apolloProvider = new VueApollo({
  defaultClient: apolloClient,
})

export default {
  name: 'BaseWidget',
  components:{
    viewIcon,
    downloadIcon,
    smallBadge,
    mediumBadge,
    citationIcon
  },
  props: {
    dataInput: {
      type: Object,
      required: false,
      validator: function (value) {
        let keys = Object.keys(value)
        return ["citations","views","downloads"].some(r=>keys.includes(r))
      }
    },
    doi: {
      type: String,
      required: true,
      validator: function (value) {
        return value.match(/^10\.\d{4,5}\/[-._;()/:a-zA-Z0-9*~$=]+/)
      }
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
  data: function(){
    return{
      views: "",
      downloads: "",
      citations: ""
    }
  },
  computed: {
    link(){
      return "https://search.datacite.org/works/"+this.doi
    },
    url(){
      return "https://api.datacite.org/graphql"
    },
    dataInputApi(){
      return this.viewsDistribution
    },
    alt(){
      return Number(this.views) + " Views " + Number(this.downloads) + " Downloads " +  Number(this.citations) + " Citations from DataCite"
    },
    tooltip(){
      let message = ""
      message += this.datacite ? this.datacite + " from DataCite " : ""  
      message += this.crossref ? this.crossref + " from Crossref" : ""  
      return  message
    }
  },
  apollo: {
    counts: { 
      query: gql` query CountsQuery($doi: ID!) 
        {
            counts: dataset(id: $doi) {
              id
              views: viewCount
              downloads: downloadCount
              citations: citationCount
            } 
        }
      `,
      variables() {
        return {doi: this.doi}
      },
      result ({ data }) {
        if(this.isLocal() == true){
          this.grabMetrics(this.dataInput);
        }else{
          this.grabMetrics(data.counts) 
        }  
      },
      // Error handling
      error (error) {
        // eslint-disable-next-line
        console.error('We\'ve got an error!', error)
      },
      // update: data => data.dataset
    }
  },
  methods:{
    getMetrics: function(){ 
      if(this.isLocal() == false){
        this.requestMetrics()
      }else{
        this.grabMetrics(this.dataInput);
      }
      return true
    },
    isLocal: function(){
      if(this.dataInput == null && typeof this.doi != "undefined"){
        return false
      }
      return true
    },
    grabMetrics: function(data){
      this.views = data.views || ""
      this.downloads = data.downloads || ""
      this.citations = data.citations || ""
      this.crossref = data.crossref || ""
      this.datacite = data.datacite || ""
    },
    requestMetrics: function(){
      axios({
          url: this.url,
          method: 'post',
          data: {
            query: `
              {
                counts: dataset(id: "${this.doi}") {
                    id
                    views: viewCount
                    downloads: downloadCount
                    citations: citationCount
                  } 
              }
              `
          }
        } )
        .then((response) => {
               // eslint-disable-next-line
          // console.log(response)
          this.grabMetrics(response.data.data.counts);
        })
        .catch(error => {
          // eslint-disable-next-line
          console.log(error)
          this.errored = true
        })
        .finally(() => this.loading = false)
    }
  },
  watch: {
    getEvents: {
      handler: 'getMetrics',
      immediate: true
    }
  // },
  // watch: {
  //   getEvents: {
  //     handler: 'getMetrics',
  //     // immediate: true
  //   }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
/* https://stackoverflow.com/questions/12675622/script1028-expected-identifier-string-or-number */
.icon-metrics {
  width: 17px;
  height: 17px;
  /* margin-right: 3px; */
  
  display:inline-block;
}




a{-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;font-family:'Cairo', "Helvetica", Arial, sans-serif;vertical-align:top;}
a{color:#222222;-webkit-transition:all 150ms linear;-moz-transition:all 150ms linear;-o-transition:all 150ms linear;-ms-transition:all 150ms linear;transition:all 150ms linear;text-decoration:none;}
a:hover,a:focus{color:#222222;text-decoration:none;}
a:focus,a:active{outline:0;}
a,a:visited{text-decoration:none;}

</style>

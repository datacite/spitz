// apollo.config.js
module.exports = {
  client: {
    service: {
      name: 'metrics-badge',
      // URL to the GraphQL API
      url: 'https://api.datacite.org/graphql',
    },
    // Files processed by the extension
    includes: [
      'src/**/*.vue',
      'src/**/*.js',
    ],
  },
}
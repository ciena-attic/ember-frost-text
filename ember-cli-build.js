/* global require, module */
var EmberApp = require('ember-cli/lib/broccoli/ember-addon')

module.exports = function (defaults) {
  var app = new EmberApp(defaults, {
    'ember-cli-mocha': {
      useLintTree: false
    },
    sassOptions: {
      includePaths: [
        'bower_components/bourbon/app/assets/stylesheets',
        'node_modules/ember-frost-theme/scss',
        'node_modules/ember-frost-css-core/scss'
      ]
    }
  })

  return app.toTree()
}

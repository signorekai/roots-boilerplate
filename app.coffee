browserify   = require 'roots-browserify'
css_pipeline = require 'css-pipeline'
js_pipeline  = require 'js-pipeline'
postcss      = require 'postcss'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf', '.idea/*', 'yarn.lock', 'assets/css/*/', '.DS_Store', 'assets/css/!(main).scss', 'package-lock.json']

  extensions: [
    js_pipeline(files: ['assets/js/main.js'], out: 'js/built.js'),
    css_pipeline(files: ['assets/css/main.scss'], out: 'css/built.css', postcss: true)
  ]

  jade:
    pretty: true

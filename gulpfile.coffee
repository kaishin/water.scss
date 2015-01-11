gulp = require "gulp"
template = require "gulp-template"
minimist = require "minimist"
rename = require "gulp-rename"
insert = require "gulp-insert"

defaultOptions =
  alias:
    "name": "n"
  default:
    name: process.env.NODE_ENV or "generated"

options = minimist(process.argv.slice(2), defaultOptions)
paths =
  source:
    base: "./source"
    functions: "./source/functions"
    mixins: "./source/mixins"
    aliases: "./source/_aliases.scss"
  specs:
    shared: "./spec/support/shared"
    water: "./spec/water"
  tests:
    libsass: "./tests/libsass"
    rubySass: "./tests/ruby-sass"

gulp.task "default", ["mixin"]
gulp.task "mixin", ["generate:mixin", "generate:spec"]
gulp.task "function", ["generate:function", "generate:spec"]

gulp.task "generate:mixin", ->
  gulp.src "templates/mixin.scss"
    .pipe template
      name: options.name
      prefixedName: "wtr-" + options.name
    .pipe rename "_#{options.name}.scss"
    .pipe gulp.dest paths.source.mixins
  gulp.src "#{paths.source.mixins}/_glob.scss"
    .pipe insert.append "@import \"#{options.name}\";\n"
    .pipe gulp.dest paths.source.mixins
  gulp.src paths.source.aliases
    .pipe insert.append(
      "\n/// @requires wtr-#{options.name}
      \n/// @alias wtr-#{options.name}
      \n@mixin #{options.name}($arguments...) {
      \r  @include wtr-#{options.name}($arguments...);
      \r}")
    .pipe gulp.dest paths.source.base
  gulp.src "templates/mixin-test.scss"
    .pipe template
      name: options.name
    .pipe rename "#{options.name}.scss"
    .pipe gulp.dest paths.tests.rubySass

gulp.task "generate:spec", ->
  gulp.src "templates/spec.rb"
    .pipe template
      name: options.name
      prefixedName: "wtr-" + options.name
    .pipe rename "#{options.name.replace('-', '_')}_spec.rb"
    .pipe gulp.dest paths.specs.water
  gulp.src "templates/shared.rb"
    .pipe template
      name: options.name
      prefixedName: "wtr-" + options.name
    .pipe rename "#{options.name.replace('-', '_')}.rb"
    .pipe gulp.dest paths.specs.shared
  gulp.src "templates/libsass-test.scss"
    .pipe template
      name: options.name
    .pipe rename "#{options.name}.scss"
    .pipe gulp.dest paths.tests.libsass

gulp.task "generate:function", ->
  gulp.src "templates/function.scss"
    .pipe template
      name: options.name
      prefixedName: "wtr-" + options.name
    .pipe rename "_#{options.name}.scss"
    .pipe gulp.dest paths.source.functions
  gulp.src "#{paths.source.functions}/_glob.scss"
    .pipe insert.append "\r@import \"#{options.name}\";"
    .pipe gulp.dest paths.source.functions
  gulp.src "templates/function-test.scss"
    .pipe template
      name: options.name
    .pipe rename "#{options.name}.scss"
    .pipe gulp.dest paths.tests.rubySass



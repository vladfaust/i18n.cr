# I18n

[![Built with Crystal](https://img.shields.io/badge/built%20with-crystal-000000.svg?style=flat-square)](https://crystal-lang.org/)
[![Build status](https://img.shields.io/travis/vladfaust/i18n.cr/master.svg?style=flat-square)](https://travis-ci.org/vladfaust/i18n.cr)
[![Docs](https://img.shields.io/badge/docs-available-brightgreen.svg?style=flat-square)](https://vladfaust.com/i18n.cr)
[![Releases](https://img.shields.io/github/release/vladfaust/i18n.cr.svg?style=flat-square)](https://github.com/vladfaust/i18n.cr/releases)
[![Awesome](https://github.com/vladfaust/awesome/blob/badge-flat-alternative/media/badge-flat-alternative.svg)](https://github.com/veelenga/awesome-crystal)
[![vladfaust.com](https://img.shields.io/badge/style-.com-lightgrey.svg?longCache=true&style=flat-square&label=vladfaust&colorB=0a83d8)](https://vladfaust.com)

Internationalization module for [Crystal](https://crystal-lang.org/).


## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  i18n:
    github: vladfaust/i18n.cr
    version: ~> 0.1.0 # See actual version in releases
```

This shard follows [Semantic Versioning 2.0.0](https://semver.org/), so see [releases](https://github.com/vladfaust/i18n.cr/releases) and change the `version` accordingly.

## Usage

```yaml
# es.yml
es:
  apples:
    one: 1 manzana
    other: "%{count} manzanas"
```

```crystal
require "i18n"
require "i18n/backends/yaml"

I18n.backend = I18n::Backends::YAML.new.tap do |backend|
  backend.load_paths << Dir.current + "/locales"
  backend.load
end

I18n.default_locale # => "en"
I18n.locale = "es"

I18n.t("apples", count: 3) # => "3 manzanas"
```

You can implement your own `I18n::Backend`, as well as your own quantity keys rules (`"one"`, `"many"` etc.). Read more in docs.

## Development

Tests included! Run `crystal spec` while developing.

There is currently no code for localization currencies, date and time etc. If you need it, please open an issue and/or a pull request.

## Contributing

1. Fork it ( https://github.com/vladfaust/i18n.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [@vladfaust](https://github.com/vladfaust) Vlad Faust - creator, maintainer

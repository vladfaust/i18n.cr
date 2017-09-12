<img src="https://user-images.githubusercontent.com/7955682/30343700-23592684-9807-11e7-8012-feebede90f2c.png" height="64">

# [![Build Status](https://travis-ci.org/vladfaust/i18n.cr.svg?branch=master)](https://travis-ci.org/vladfaust/i18n.cr) [![Docs](https://img.shields.io/badge/docs-available-brightgreen.svg)](https://vladfaust.com/i18n.cr) [![GitHub release](https://img.shields.io/github/release/vladfaust/i18n.cr.svg)](https://github.com/vladfaust/i18n.cr/releases)

[I18n](https://github.com/vladfaust/i18n.cr) is an internationalization module for [Crystal](https://crystal-lang.org/).


## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  i18n:
    github: vladfaust/i18n.cr
    version: ~> 0.1.0
```

## Documentation
[Documentation](https://vladfaust.com/i18n.cr) is avalilable online.

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

## Credits

- Logo font: [HVD Comic Serif Pro](https://www.fontsquirrel.com/fonts/hvd-comic-serif-pro)
- Logo image: [EmojiOne](https://www.emojione.com/)

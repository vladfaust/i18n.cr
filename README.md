# I18n

[![Built with Crystal](https://img.shields.io/badge/built%20with-crystal-000000.svg?style=flat-square)](https://crystal-lang.org/)
[![Build status](https://img.shields.io/travis/vladfaust/i18n.cr/master.svg?style=flat-square)](https://travis-ci.org/vladfaust/i18n.cr)
[![API Docs](https://img.shields.io/badge/api_docs-online-brightgreen.svg?style=flat-square)](https://github.vladfaust.com/i18n.cr)
[![Releases](https://img.shields.io/github/release/vladfaust/i18n.cr.svg?style=flat-square)](https://github.com/vladfaust/i18n.cr/releases)
[![Awesome](https://awesome.re/badge-flat2.svg)](https://github.com/veelenga/awesome-crystal)
[![vladfaust.com](https://img.shields.io/badge/style-.com-lightgrey.svg?longCache=true&style=flat-square&label=vladfaust&colorB=0a83d8)](https://vladfaust.com)
[![Patrons count](https://img.shields.io/badge/dynamic/json.svg?label=patrons&url=https://www.patreon.com/api/user/11296360&query=$.included[0].attributes.patron_count&style=flat-square&colorB=red&maxAge=86400)](https://www.patreon.com/vladfaust)
[![Gitter chat](https://img.shields.io/badge/chat%20on-gitter-green.svg?colorB=ED1965&logo=gitter&style=flat-square)](https://gitter.im/vladfaust/Lobby)

Internationalization module for [Crystal](https://crystal-lang.org/).

## Supporters

Thanks to all my patrons, I can continue working on beautiful Open Source Software! 🙏

[Lauri Jutila](https://github.com/ljuti), [Alexander Maslov](https://seendex.ru), Dainel Vera

*You can become a patron too in exchange of prioritized support and other perks*

[![Become Patron](https://vladfaust.com/img/patreon-small.svg)](https://www.patreon.com/vladfaust)

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  i18n:
    github: Liberatys/i18n.cr
    version: ~> 0.1.2
```

This shard follows [Semantic Versioning 2.0.0](https://semver.org/), so see [releases](https://github.com/vladfaust/i18n.cr/releases) and change the `version` accordingly.

## Usage

```yaml
# es.yml
es:
  testing:
    setup: "%{wow} gogo"
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

I18n.t("apples", I18n.locale, {"count" => "3") # => "3 manzanas"
I18n.t("testing.setup", I18n.locale, {"wow" => "great") # => "great gogo"
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

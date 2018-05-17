# I18n

[![Built with Crystal](https://img.shields.io/badge/built%20with-crystal-000000.svg?style=flat-square)](https://crystal-lang.org/)
[![Build status](https://img.shields.io/travis/vladfaust/i18n.cr/master.svg?style=flat-square)](https://travis-ci.org/vladfaust/i18n.cr)
[![Docs](https://img.shields.io/badge/docs-available-brightgreen.svg?style=flat-square)](https://vladfaust.com/i18n.cr)
[![Releases](https://img.shields.io/github/release/vladfaust/i18n.cr.svg?style=flat-square)](https://github.com/vladfaust/i18n.cr/releases)
[![Awesome](https://img.shields.io/badge/style-awesome-lightgrey.svg?longCache=true&style=flat-square&label=&colorA=fc60a8&colorB=494368&status=ok&logo=data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+PHN2ZyAgIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgICB4bWxuczpjYz0iaHR0cDovL2NyZWF0aXZlY29tbW9ucy5vcmcvbnMjIiAgIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyIgICB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgICB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiICAgeG1sbnM6aW5rc2NhcGU9Imh0dHA6Ly93d3cuaW5rc2NhcGUub3JnL25hbWVzcGFjZXMvaW5rc2NhcGUiICAgd2lkdGg9IjE1NC43ODEyNW1tIiAgIGhlaWdodD0iODAuMTE1ODI5bW0iICAgdmlld0JveD0iMCAwIDE1NC43ODEyNSA4MC4xMTU4MjkiICAgdmVyc2lvbj0iMS4xIiAgIGlkPSJzdmc4IiAgIGlua3NjYXBlOnZlcnNpb249IjAuOTIuMSByMTUzNzEiICAgc29kaXBvZGk6ZG9jbmFtZT0iYXdlc29tZS5zdmciPiAgPGRlZnMgICAgIGlkPSJkZWZzMiIgLz4gIDxzb2RpcG9kaTpuYW1lZHZpZXcgICAgIGlkPSJiYXNlIiAgICAgcGFnZWNvbG9yPSIjZmZmZmZmIiAgICAgYm9yZGVyY29sb3I9IiM2NjY2NjYiICAgICBib3JkZXJvcGFjaXR5PSIxLjAiICAgICBpbmtzY2FwZTpwYWdlb3BhY2l0eT0iMC4wIiAgICAgaW5rc2NhcGU6cGFnZXNoYWRvdz0iMiIgICAgIGlua3NjYXBlOnpvb209IjAuNyIgICAgIGlua3NjYXBlOmN4PSIxMzMuMTU2NTYiICAgICBpbmtzY2FwZTpjeT0iMTAxLjUzNjMiICAgICBpbmtzY2FwZTpkb2N1bWVudC11bml0cz0ibW0iICAgICBpbmtzY2FwZTpjdXJyZW50LWxheWVyPSJsYXllcjEiICAgICBzaG93Z3JpZD0iZmFsc2UiICAgICBmaXQtbWFyZ2luLXRvcD0iMCIgICAgIGZpdC1tYXJnaW4tbGVmdD0iMCIgICAgIGZpdC1tYXJnaW4tcmlnaHQ9IjAiICAgICBmaXQtbWFyZ2luLWJvdHRvbT0iMCIgICAgIGlua3NjYXBlOndpbmRvdy13aWR0aD0iMTkyMCIgICAgIGlua3NjYXBlOndpbmRvdy1oZWlnaHQ9IjEwMTciICAgICBpbmtzY2FwZTp3aW5kb3cteD0iLTgiICAgICBpbmtzY2FwZTp3aW5kb3cteT0iLTgiICAgICBpbmtzY2FwZTp3aW5kb3ctbWF4aW1pemVkPSIxIiAvPiAgPG1ldGFkYXRhICAgICBpZD0ibWV0YWRhdGE1Ij4gICAgPHJkZjpSREY+ICAgICAgPGNjOldvcmsgICAgICAgICByZGY6YWJvdXQ9IiI+ICAgICAgICA8ZGM6Zm9ybWF0PmltYWdlL3N2Zyt4bWw8L2RjOmZvcm1hdD4gICAgICAgIDxkYzp0eXBlICAgICAgICAgICByZGY6cmVzb3VyY2U9Imh0dHA6Ly9wdXJsLm9yZy9kYy9kY21pdHlwZS9TdGlsbEltYWdlIiAvPiAgICAgICAgPGRjOnRpdGxlPjwvZGM6dGl0bGU+ICAgICAgPC9jYzpXb3JrPiAgICA8L3JkZjpSREY+ICA8L21ldGFkYXRhPiAgPGcgICAgIGlua3NjYXBlOmxhYmVsPSJMYXllciAxIiAgICAgaW5rc2NhcGU6Z3JvdXBtb2RlPSJsYXllciIgICAgIGlkPSJsYXllcjEiICAgICB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzIuMjA5MjQzLC05OS4zODI3MDcpIj4gICAgPHBhdGggICAgICAgc3R5bGU9ImZpbGw6I2ZmZmZmZjtzdHJva2Utd2lkdGg6MC4yNjQ1ODMzMiIgICAgICAgaW5rc2NhcGU6Y29ubmVjdG9yLWN1cnZhdHVyZT0iMCIgICAgICAgZD0ibSAxODYuOTkwNDksMTM1LjgxNTgzIC0zOS42ODc1LC0zNi40MDY2NjQgLTUuNTgyNzEsNi4wODU0MTQgMzMuMDcyOTIsMzAuMzIxMjUgSCA0NC40MzI5OTQgTCA3Ny41MDU5MSwxMDUuNDY4MTIgNzEuOTIzMjAyLDk5LjM4MjcwNyAzMi4yMzU3MDMsMTM1LjgxNTgzIGggLTAuMDI2NDYgdiAyMy45OTc3MSBjIDAsMTAuODQ3OTEgMTAuNDUxMDQxLDE5LjY4NSAyMy4yODMzMzIsMTkuNjg1IGggMjQuNDczOTU4IGMgMTIuODMyMjkyLDAgMjMuMjgzMzM3LC04LjgzNzA5IDIzLjI4MzMzNywtMTkuNjg1IHYgLTE1Ljc2OTE3IGggMTIuNyB2IDE1Ljc2OTE3IGMgMCwxMC44NDc5MSAxMC40NTEwNCwxOS42ODUgMjMuMjgzMzMsMTkuNjg1IGggMjQuNDczOTYgYyAxMi44MzIyOSwwIDIzLjI4MzMzLC04LjgzNzA5IDIzLjI4MzMzLC0xOS42ODUgeiIgICAgICAgaWQ9InBhdGg0NDg3IiAvPiAgPC9nPjwvc3ZnPg==)](https://github.com/veelenga/awesome-crystal)
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

require "../backend"
require "yaml"

module I18n::Backends
  # Plain `Hash` backend.
  #
  # It **MUST** be populated with data explicitly upon creation.
  #
  class Hash < Backend
    # :nodoc:
    def load
      return
    end

    # Initializes a backend and loads it with *data* (it **MUST** be a `Hash`).
    #
    # ```
    # backend = I18n::Backends::Hash.new.tap { |b| b.load({"foo" => "bar"}) }
    # ```
    #
    # TODO: Find a way to implement this without external parsers.
    def initialize(data)
      @data = ::YAML.parse(data.to_yaml)
    end
  end
end

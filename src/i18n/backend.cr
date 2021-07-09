require "json"
require "yaml"
require "../ext/**"

module I18n
  # Backend is a storage for translations. All translations are stored in `#data`.
  #
  # ```
  # backend = I18n::Backends::YAML.new
  # backend.load_paths << Dir.current + "/locales"
  # backend.load
  # backend.translate(["hello", "world"], "en") # => "Hello world!"
  # ```
  abstract class Backend
    alias QuantityKeyProc = Proc(Int32, String)

    # A list of `QuantityKeyProc`s associated with their locales.
    #
    # Defaults with `"en"` key:
    #
    # ```
    # "en" => QuantityKeyProc.new do |count|
    #   if count == 0
    #     "zero"
    #   elsif count == 1
    #     "one"
    #   else
    #     "other"
    #   end
    # end
    # ```
    #
    # Extend it with your own locales if you need:
    #
    # ```
    # I18n::Backend.quantity_key_procs.merge!({"ru" => QuantityKeyProc.new { |count| your_code }})
    # ```
    class_getter quantity_key_procs : Hash(String, QuantityKeyProc) = {
      "en" => QuantityKeyProc.new { |count|
        if count == 0
          "zero"
        elsif count == 1
          "one"
        else
          "other"
        end
      },
    }

    # Storage for translations
    getter data : JSON::Any | YAML::Any | Nil = nil

    # Where to load locale files from.
    #
    # ```
    # backend.load_paths << Dir.current + "/locales"
    # ```
    getter load_paths = Array(String).new

    # Loads data from `load_paths`.
    abstract def load

    # Find a translation by *keys* and *locale*.
    #
    # *locale* is prepended to the list of keys when searching for a translation.
    #
    # ```
    # # Searches for "en => hello => world"
    # backend.translate(["hello", "world"], "en") # => "Hello world!"
    #
    # # Searches for "en => apples => other"
    # backend.translate(["apples"], "en", count: 3) # => "3 apples"
    # ```
    def translate(keys : Array(String), locale : String, arguments : Hash(String, String) = Hash(String, String).new)
      raise DataNotLoadedError.new unless data

      count = arguments.dig?("count")

      unless count.nil?
        keys << quantity_key(count.to_i, locale)
      end

      # Prepend locale to the keys
      keys.unshift(locale)

      translation = data.not_nil!.dig?(keys.dup).try &.to_s
      raise TranslationNotFoundError.new(keys, locale) unless translation

      begin
        return translation % arguments
      rescue ex
        return "Translation Interpolation Error: #{ex.message}"
      end
    end

    # Raised when `Backend.data` is nil.
    class DataNotLoadedError < Exception
    end

    # Raised when a translation is not found.
    class TranslationNotFoundError < Exception
      def initialize(keys : Array(String), locale : String)
        super("Translation not found for locale \"#{locale}\" by keys #{keys}")
      end
    end

    private def quantity_key(count : Int32, locale : String)
      (self.class.quantity_key_procs[locale]? || self.class.quantity_key_procs["en"]).call(count)
    end
  end
end

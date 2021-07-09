require "./i18n/*"

module I18n
  extend self

  # An array of all available locales. Must be set explicitly.
  #
  # ```
  # I18n.available_locales = %w(en es)
  # ```
  class_property available_locales : Array(String) = Array(String).new

  # Default locale picked when no *locale* is passed to `#translate`.
  #
  # Defaults to `"en"`.
  class_property default_locale : String = "en"

  # Current locale. The next and ongoing translations will be made with this locale, if not passed explicitly.
  #
  # ```
  # I18n.locale = "es"
  # I18n.t("apples", count: 3) # => "3 manzanas"
  # ```
  class_property locale : String? = nil

  # A current `Backend` used by I18n. Can be changed in a runtime.
  class_property backend : Backend? = nil

  # Whether to rescue `Backend::TranslationNotFoundError` when a translation is missing (defaults to *true*).
  #
  # ```
  # I18n.translate("unknown.key") # => "MISSING: en.unknown.key"
  # ```
  class_property rescue_missing : Bool = true

  # Translates a value in a *locale* found by *keys*. Can pass *count* value to translate in plural form.
  #
  # If *locale* not given, uses `#locale` or `#default_locale`.
  #
  # ```
  # I18n.translate(["hello", "world"])         # => "Hello world!"
  # I18n.translate(["apples"], "es", count: 3) # => "3 manzanas"
  # ```
  def translate(keys : Array(String),
      locale : String? = locale || default_locale,
      arguments : Hash(String, String) = Hash(String, String).new) : String

    raise BackendNotSetError.new unless backend

    begin
      backend.not_nil!.translate(keys.dup, locale, arguments)
    rescue ex : Backend::TranslationNotFoundError
      raise ex unless rescue_missing
      "MISSING: #{locale}.#{keys.join(".")}"
    end
  end

  # A convenient overloader, keys are passed as a String with dot delimeters.
  #
  # ```
  # I18n.translate("hello.world")            # => "Hello world!"
  # I18n.translate("apples", "es", count: 3) # => "3 manzanas"
  # ```
  def translate(key : String, a, **n)
    translate(key.split("."), a, **n)
  end

  # ditto
  def t(key : String, *a, **n)
    translate(key.split("."), *a, **n)
  end

  # Raised when `I18n.backend` is nil.
  class BackendNotSetError < Exception
  end
end

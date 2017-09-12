require "yaml"
require "../backend"

module I18n::Backends
  class YAML < Backend
    # See `Backend.load`.
    def load
      contents = ""

      load_paths.each do |path|
        Dir.glob(path + "/*.yml", path + "/*.yaml") do |filename|
          contents += File.read(filename)
        end
      end

      @data = ::YAML.parse(contents)
    end
  end
end

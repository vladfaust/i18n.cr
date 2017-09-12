require "json"
require "../backend"

module I18n::Backends
  class JSON < Backend
    # See `Backend.load`.
    def load
      contents = ""

      load_paths.each do |path|
        Dir.glob(path + "/*.json") do |filename|
          contents += File.read(filename)
        end
      end

      @data = ::JSON.parse(self.class.merge_json(contents))
    end

    # Concatenates multiple JSONs into one in a raw *string*
    #
    # ```
    # string = <<-END
    # {
    #   "foo": "bar"
    # }
    #
    # {
    #   "bar": "baz"
    # }
    # END
    #
    # merge_json(string)
    # # {
    # #  "foo": "bar",
    # #  "bar": "baz"
    # # }
    # ```
    def self.merge_json(string)
      string.gsub(%r[}\n*{\n], ",\n")
    end
  end
end

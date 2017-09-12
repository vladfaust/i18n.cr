macro define_dig?(klass)
  # Digs deeply into self until found the value by keys.
  #
  # Returns nil if not found.
  #
  # NOTE: The *keys* argument **MAY** be **modified** with `#shift` (you may `#dup` or `#clone` it before passing).
  #
  # ```
  # x = {"a" => "b", "c" => {"d" => "e"}} # Instance of {{klass.id}}
  # x.dig?(["c", "d"]) # => "e"
  # ```
  def dig?(keys : Array(String))
    if keys.size == 1
      return self[keys.first]?
    else
      value = self[keys.shift]?
      value.dig?(keys) if value.is_a?({{klass.id}})
    end
  end
end

class Hash(K, V)
  define_dig?(Hash)
end

struct YAML::Any
  define_dig?(YAML::Any)
end

struct JSON::Any
  define_dig?(JSON::Any)
end

module Registry
  module Rails
    require "registry/rails/engine" if defined?(Rails)
  end
end

require "singleton"
require "registry/rails/version"

module Registry
  module Rails
    class Register
      include Singleton

      attr_reader :registry

      def initialize
        @registry = {}
      end

      def set(key, value = nil)
        @registry[key.to_s] = value
        self
      end

      def get(key, default = nil)
        return @registry[key.to_s] if @registry.key?(key.to_s)

        default
      end
    end
  end
end

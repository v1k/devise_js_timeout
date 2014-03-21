require "rails"
require "devise"

module DeviseJsTimeout
  class Engine < ::Rails::Engine
    isolate_namespace DeviseJsTimeout
  end
end

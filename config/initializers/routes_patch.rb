class ActionDispatch::Routing::Mapper
  alias_method :old_devise_session, :devise_session

  def devise_session(mapping, controllers)
    old_devise_session(mapping, controllers)
    resource :session, only: [], controller: controllers[:sessions], path: "" do
      get :is_expired, path: 'session/is_expired'
    end
  end

  def with_devise_exclusive_scope(new_path, new_as, options)
    
    logger = Logger.new(STDOUT)
    logger.debug new_path
    logger.debug new_as
    logger.debug options

    old = {}
    DEVISE_SCOPE_KEYS.each {|k| old[k] = @scope[k]}

    new = { as: new_as, path: new_path, module: nil }
    new.merge!(options.slice(:constraints, :defaults, :options))
    
    @scope.merge!(new)
    yield
  ensure
    @scope.merge!(old)
  end
end

# class Devise::Mapping
#   alias_method :old_initialize, :initialize
#   def initialize(name, options)
#     old_initialize(name, options)
#     logger = Logger.new(STDOUT)
#     logger.debug name
#     logger.debug @scoped_path
#     logger.debug @path
#     logger.debug options[:path_names]
#     logger.debug @controllers
#     logger.debug @used_routes
#   end
# end

# module Devise
#   class << self
#     alias_method :odl_add_mapping, :add_mapping
#     def add_mapping(resource, options)
#       odl_add_mapping(resource, options)
#       mapping = odl_add_mapping(resource, options)
#       logger = Logger.new(STDOUT)
#       logger.debug mapping
#       mapping
#     end
#   end
# end
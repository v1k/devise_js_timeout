class ActionDispatch::Routing::Mapper
  alias_method :old_devise_session, :devise_session
  alias_method :old_with_devise_exclusive_scope, :with_devise_exclusive_scope

  prepend_after_action :with_devise_exclusive_scope, :log_scope

  def devise_session(mapping, controllers)
    old_devise_session(mapping, controllers)
    get 'session/is_expired', to: controllers[:sessions] << '#is_expired'
    logger = Logger.new(STDOUT)
    logger.debug @scope
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
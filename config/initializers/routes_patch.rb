class ActionDispatch::Routing::Mapper
  alias_method :old_devise_session, :devise_session

  def devise_session(mapping, controllers)
    old_devise_session(mapping, controllers)
    get 'session/is_expired', to: controllers[:sessions] << '#is_expired'
  end
end

class Devise::Mapping
  alias_method :old_initialize, :initialize
  def initialize(name, options)
    old_initialize(name, options)
    logger = Logger.new(STDOUT)
    logger.debug name
    logger.debug @scoped_path
    logger.debug @path
    logger.debug options[:path_names]
    logger.debug @controllers
  end
end
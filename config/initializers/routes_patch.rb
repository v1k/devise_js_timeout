class ActionDispatch::Routing::Mapper
  alias_method :old_devise_session, :devise_session

  def devise_session(mapping, controllers)
    old_devise_session(mapping, controllers)
    get 'session/is_expired', to: controllers[:sessions] << '#is_expired'
  end
end

class Devise::Mapping
  def fullpath
    logger = Logger.new(STDOUT)
    logger.debug @path
    logger.debug @path_prefix
    if(@path == 'sessions/is_expired')
      "/#{@path}".squeeze("/")
    else
      "/#{@path_prefix}/#{@path}".squeeze("/")
    end
  end
end
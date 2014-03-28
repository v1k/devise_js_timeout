class ActionDispatch::Routing::Mapper
  alias_method :old_devise_session, :devise_session

  def devise_session(mapping, controllers)
    old_devise_session(mapping, controllers)
    logger = Logger.new(STDOUT)
    logger.debug controllers[:sessions]
    # get controllers[:sessions]:is_expired, path: 'session/is_expired'
  end
end
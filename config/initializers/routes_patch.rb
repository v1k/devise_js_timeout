class ActionDispatch::Routing::Mapper
  alias_method :old_devise_session, :devise_session

  attr_reader :session_controller

  def devise_session(mapping, controllers)
    old_devise_session(mapping, controllers)
    @session_controller = controllers[:sessions]
  end
end
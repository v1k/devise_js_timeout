class ActionDispatch::Routing::Mapper
  @@session_controller

  alias_method :old_devise_session, :devise_session

  def devise_session(mapping, controllers)
    old_devise_session(mapping, controllers)
    @@session_controller = controllers[:sessions]
  end

  def get_session_controller
    @@session_controller
  end
end
class ActionDispatch::Routing::Mapper
  alias_method :old_devise_session, :devise_session

  def devise_session(mapping, controllers)
    old_devise_session(mapping, controllers)
    get 'devise/session#is_expired', path: 'session/is_expired', as: "is_expired"
  end
end
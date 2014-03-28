class ActionDispatch::Routing::Mapper
  alias_method :old_devise_session, :devise_session

  def devise_session(mapping, controllers)
    old_devise_session(mapping, controllers)
    resource :session, only [], controller: controllers[:sessions], path: "" do
      get 'devise/session#is_expired', path: '../session/is_expired'
    end
  end
end
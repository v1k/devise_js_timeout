class ActionDispatch::Routing::Mapper
  alias_method :old_devise_session, :devise_session

  def devise_session(mapping, controllers)
    old_devise_session(mapping, controllers)
    match 'sessions/is_expired', to: controllers[:sessions] << '#is_expired', via: :get
  end
end
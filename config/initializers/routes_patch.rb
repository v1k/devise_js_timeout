class ActionDispatch::Routing::RouteSet
  alias_method :old_devise_session, :devise_session
  def devise_session(mapping, controllers)
    old_devise_session(mapping, controllers)
    resource :session, omly: [], controller: controllers[:sessions], path: "" do
      get 'is_expired', :to => 'devise/sessions#is_expired'
    end
  end
end
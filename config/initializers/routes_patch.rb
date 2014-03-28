class ActionDispatch::Routing::Mapper
  alias_method :old_devise_session, :devise_session
  def devise_session(mapping, controllers)
    old_devise_session(mapping, controllers)
    config.logger = Logger.new(STDOUT)
    logger.debug mapping.path_names[:sign_in]
    resource :session, only: [], controller: controllers[:sessions], path: "" do
      get :is_expired, path: '/is_expired'
    end
  end
end
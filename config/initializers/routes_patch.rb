ActionDispatch::Routing::RouteSet.class_eval do 
  def devise_session(mapping, controllers)
    resource :session, omly: [], controller: controllers[:sessions], path: "" do
      get   :new,          path: mapping.path_names[:sign_in], as: "new"
      post  :create,       path: mapping.path_names[:sign_in]
      match :destroy,      path: mapping.path_names[:sign_out], as: "destroy", via: mapping.sign_out_via
      get   '/is_expired', path: 'devise/sessions#is_expired'
    end
  end
end
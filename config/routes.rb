Rails.application.routes.draw do
  devise_scope :users do
   get "/is_expired", :to => "devise/sessions#is_expired", :as => "session_is_expired"
 end
end

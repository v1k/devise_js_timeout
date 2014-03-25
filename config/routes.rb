Rails.application.routes.draw do
  devise_scope :users do
   get "is_expired", :to => "login/sessions#is_expired", :as => "session_is_expired"
  end
end

Rails.application.routes.draw do
  devise_scope :owner do
   get "is_expired", :to => "sessions#is_expired", :as => "session_is_expired"
  end
end

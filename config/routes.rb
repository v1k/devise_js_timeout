Rails.application.routes.draw do
  as :user do
   get "is_expired", :to => "devise/sessions#is_expired" #, :as => "session_is_expired"
  end
end

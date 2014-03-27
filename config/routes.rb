Rails.application.routes.draw do
  as :session do
   get 'is_expired', :to => 'devise/sessions#is_expired'
  end
end

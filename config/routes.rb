Rails.application.routes.draw do
  as :user do
    get 'session/is_expired', to: 'devise/sessions#is_expired'
  end
end

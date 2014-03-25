Rails.application.routes.draw do
  devise_for :user do
    get "/is_expired", :to => "devise/sessions#is_expired"
  end
end

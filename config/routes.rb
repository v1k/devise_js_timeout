Rails.application.routes.draw do
  get "/is_expired", :to => "devise/sessions#is_expired"
end

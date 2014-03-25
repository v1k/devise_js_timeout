Rails.application.routes.draw do
  get "/is_expired.json", :to => "devise/sessions#is_expired"
end

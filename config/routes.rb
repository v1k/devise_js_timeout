Rails.application.routes.draw do
  get "/is_expired" => "devise/sessions#is_expired"
end

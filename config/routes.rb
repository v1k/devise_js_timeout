Rails.application.routes.draw do
  devise_for :users do
    get "/is_expired" => "devise/sessions#is_expired"
  end
end

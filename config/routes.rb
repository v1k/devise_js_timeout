Rails.application.routes.draw do
  match '/is_expired' => 'session#is_expired'
end
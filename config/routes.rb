Rails.application.routes.draw do
  match '/session/is_expired', to: ':controller/session/is_expired'
end

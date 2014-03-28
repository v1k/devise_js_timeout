Rails.application.routes.draw do
  get '/session/is_expired', to: ':controller/session/is_expired'
end

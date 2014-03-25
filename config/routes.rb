Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:is_expired => 'is_expired'}
end

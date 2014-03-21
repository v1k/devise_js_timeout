DeviseJsTimeout::Engine.routes.draw do
  match '/is_expired' => 'session#is_expired'
  divise_for :users, module: :devise
end

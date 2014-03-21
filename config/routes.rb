DeviseJsTimeout::Engine.routes.draw do
  match '/is_expired' => 'session#is_expired'
  divise_for module: :devise
end

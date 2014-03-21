Rails.application.routes.draw do

  mount DeviseJsTimeout::Engine => "/devise_js_timeout"
end

Rails.application.routes.draw do
  match '/session/is_expired', to: ActionDispatch::Routing::Mapper.session_controller << '#is_expired'
end

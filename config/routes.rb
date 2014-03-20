Rails.application.routes.draw do
  devise_for {sessions: "sessions"}
end
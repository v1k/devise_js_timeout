Rails.application.routes.draw do
  devise_for controllers: {sessions: "sessions"}
end
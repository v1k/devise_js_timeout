require "devise_js_timeout/version"
# require "devise/app/controllers/sessionscontroller"

require "devise"

<<<<<<< HEAD
module Devise
  SessionsController.class_eval do
    def is_expired
      unless current_user.timedout?(current_user.last_request_at)
        render json: { status: :ok, message: "User session expired." }
      else
        render json: { status: :fail, message: "User is active." }
      end
=======
Devise::SessionsController.class_eval do
  def is_expired
    unless current_user.timedout?(current_user.last_request_at)
      render json: { status: :ok, message: "User session expired." }
    else
      render json: { status: :fail, message: "User is active." }
>>>>>>> cf3b3b5ed18c4d6df473d18f6f7ba3306cb19e9a
    end
  end
end
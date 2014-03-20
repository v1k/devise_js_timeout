require "devise_js_timeout/version"
# require "devise/app/controllers/sessionscontroller"

unless defined?(Devise::SessionsController)
  require "devise/app/controllers/sessions_controller"
end

Devise::SessionsController.class_eval do
  def is_expired
    unless current_user.timedout?(current_user.last_request_at)
      render json: { status: :ok, message: "User session expired." }
    else
      render json: { status: :fail, message: "User is active." }
    end
  end
end
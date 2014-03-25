Devise::SessionsController.class_eval do
  config.logger = Logger.new(STDOUT)
  logger.debug "Code initialized"
  
  def is_expired
    logger.debug :last_request_at
    unless current_user.timedout?(:last_request_at)
      render json: { status: :ok, message: "User session expired." }
    else
      render json: { status: :fail, message: "User is active." }
    end
  end
end
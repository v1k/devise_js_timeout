Devise::SessionsController.class_eval do
  config.logger = Logger.new(STDOUT)
  logger.debug "Code initialized"
  
  def is_expired
    logger.debug "Signed_in" + signed_in?.to_sb
    unless signed_in?
      render json: { status: :ok, message: "User session expired." }
    else
      render json: { status: :fail, message: "User is active." }
    end
  end
end
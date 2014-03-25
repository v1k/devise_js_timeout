Devise::SessionsController.class_eval do
  config.logger = Logger.new(STDOUT)
  logger.debug "Code initialized"
  
  def is_expired
    logger.debug "Signed_in" + signed_in?.to_s
    if !signed_in?
      logger.debug "STATUS OK"
      render json: { status: :ok, message: "User session expired." }
    else
      logger.debug "STATUS FAIL"
      render json: { status: :fail, message: "User is active." }
    end
  end
end
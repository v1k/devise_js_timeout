Devise::SessionsController.class_eval do
  config.logger = Logger.new(STDOUT)
  logger.debug "Code initialized"
  
  def is_expired
    render json: { status: signed_in?}
  end
end
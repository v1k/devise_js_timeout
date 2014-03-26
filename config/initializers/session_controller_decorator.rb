Devise::SessionsController.class_eval do
  config.logger = Logger.new(STDOUT)
  logger.debug "Code initialized"
  
  def is_expired
    # logger.debug current_user.methods.to_s
    # logger.debug user_session.methods.to_s
    render json: { status: :ok} #, expired: !user_session.present?}
  end
end
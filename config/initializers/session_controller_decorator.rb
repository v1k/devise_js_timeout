Devise::SessionsController.class_eval do
  
  prepend_before_action :skip_timeout, only: [:is_expired]
  
  def skip_timeout
    request.env['devise.skip_trackable'] = true    
  end
  
  def is_expired
    render json: { status: :ok, expired: !user_session.present?}
  end
end
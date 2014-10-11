class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def block_unauthenticated_users
    unless current_account
      if request.xhr?
        render json: {}, status: :unauthorized
      else
        redirect_to login_path, alert: "Please log in"
      end
    end
  end

  def signed_in?
    current_account.present?
  end

  def current_account
    user = current_account_id && List.find_by_id(current_account_id)
    session['account_id'] = user.id if session['account_id'].blank? && user
    user
  end

  def current_account_id
    session['account_id']
  end

  def login_as(user)
    return_path = session['return_path']
    reset_session
    session.merge!('account_id' => user.id, 'return_path' => return_path)
  end

  def sign_out
    reset_session
  end

  helper_method :current_account, :signed_in?
end

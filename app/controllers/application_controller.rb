class ApplicationController < ActionController::Base
  include SessionsHelper
  helper_method :current_user, :logged_in?

  def current_user
    if session[:user_id]
      begin
        @current_user ||= User.find(session[:user_id])
      rescue ActiveRecord::RecordNotFound
        # User with the specified id doesn't exist
        @current_user = nil
      end
    end

    @current_user
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:alert] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end

  def fallback_index_html
    render file: 'public/index.html'
  end
end

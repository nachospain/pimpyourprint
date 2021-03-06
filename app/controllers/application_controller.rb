class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!, except: [:home, :quiz, :quiz_results, :about]
  around_action :user_time_zone, if: :current_user

  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Pundit: white-list approach.
  after_action :verify_authorized, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def store_location
  # store last url as long as it isn't a /users path
    session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end

  def user_time_zone
    if current_user
      Time.use_zone(current_user.time_zone) { yield }
    else
      yield
    end
  end
end

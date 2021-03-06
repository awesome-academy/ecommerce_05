class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: [:name, :address, :phone,
      :sex]
    devise_parameter_sanitizer.permit :account_update, keys: [:name, :address,
      :phone, :sex]
  end
end

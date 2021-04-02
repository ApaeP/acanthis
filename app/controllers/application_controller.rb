class ApplicationController < ActionController::Base
  before_action :set_theme, :set_contact

  def default_url_options
    # if Rails.env.production?
      { host: ENV["DOMAIN"] || "localhost:3000" }
    # else
    #   { host: "localhost:3000" }
    # end
  end

  def set_theme
    if params[:theme].present?
      theme = params[:theme].to_sym
      cookies[:theme] = {
        value: theme,
        expires: 20.year
      }
      redirect_to(request.referrer || root_path)
    end
  end

  def set_contact
    @contact = Contact.new
  end
end

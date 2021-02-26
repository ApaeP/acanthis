require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Acanthis
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.



    # Raven.configure do |config|
    #   config.dsn = 'https://18fa4413629f43e886fbe334fd06bac6:dee8237cfdf5479480fb03dd8da85c4a@o407300.ingest.sentry.io/5276052'
    # end
  end
end

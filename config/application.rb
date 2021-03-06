require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DwcPf
  class Application < Rails::Application
    config.i18n.default_locale = :ja
    config.paths.add 'lib', eager_load: true
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    Rails.application.config.active_record.sqlite3.represent_boolean_as_integer = true
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]
  end
end

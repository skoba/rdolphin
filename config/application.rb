require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module Rdolphin
  class Application < Rails::Application
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    I18n.enforce_available_locales = false
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    
    config.generators do |g|
      g.test_framework :rspec,
      fixtures: true,
      view_specs: false,
      routing_specs: false,
      helper_specs: false,
      controller_specs: true,
      request_specs: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
  end
end

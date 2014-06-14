require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(*Rails.groups)

module Rdolphin
  class Application < Rails::Application
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
      controller_specs: true,
      request_specs: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
  end
end

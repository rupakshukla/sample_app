require File.expand_path('../boot', __FILE__)

<<<<<<< HEAD
=======

>>>>>>> a6f58d7894e27cda0848118c08aba5a8162d6286
# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"
<<<<<<< HEAD
=======
#config.assets.initialize_on_precompile = false
>>>>>>> a6f58d7894e27cda0848118c08aba5a8162d6286

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'
<<<<<<< HEAD

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
   config.secret_key_base = YAML.load(File.open("#{Rails.root}/config/secrets.yml"))[Rails.env]['secret_key_base']
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
  end
=======
    
    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
   # config.assets.initialize_on_precompile = false

   config.secret_key_base = YAML.load(File.open("#{Rails.root}/config/secrets.yml"))[Rails.env]['secret_key_base']
  end

>>>>>>> a6f58d7894e27cda0848118c08aba5a8162d6286
end

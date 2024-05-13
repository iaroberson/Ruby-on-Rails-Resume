require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RubyOnRailsResume
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w(assets tasks))

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Disable origin check for authenticity token in development and test environments
    if Rails.env.development? || Rails.env.test?
      config.action_controller.forgery_protection_origin_check = false
    end
    
    # Specify default URL options for Action Controller
    config.action_controller.default_url_options = { host: 'verbose-palm-tree-v6p6vrgr6gqhw6v4-3000.app.github.dev', protocol: 'https' }

    # Specify default URL options for Action Mailer (if needed)
    config.action_mailer.default_url_options = { host: 'verbose-palm-tree-v6p6vrgr6gqhw6v4-3000.app.github.dev', protocol: 'https' }
  end
end

require File.expand_path('../boot', __FILE__)
require 'rails/all'
Bundler.require(*Rails.groups)

module Lgb5
  class Application < Rails::Application
    config.i18n.default_locale = :en
    config.active_record.raise_in_transactional_callbacks = true
    config.assets.precompile += %w(frontend.js frontend.css)
  end
end

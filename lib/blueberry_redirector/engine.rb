require 'roo'

module BlueberryRedirector
  class Engine < ::Rails::Engine
    isolate_namespace BlueberryRedirector

    engine_name 'redirector'

    initializer 'redirector.apply_options' do |app|
      config                           = app.config.redirector
      config.blacklisted_extensions    = %w(.js .css .jpg .png .woff .ttf .woff2 .ico .svg)
      config.use_environment_variables = false
      config.include_query_in_source   = true
    end
  end
end

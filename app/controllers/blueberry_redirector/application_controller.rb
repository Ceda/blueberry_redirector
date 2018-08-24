module BlueberryRedirector
  class ApplicationController < BlueberryRedirector.admin_controller.constantize
    protect_from_forgery with: :exception

    helper BlueberryRedirector::RedirectorHelper
  end
end

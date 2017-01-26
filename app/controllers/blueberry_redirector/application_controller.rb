module BlueberryRedirector
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    layout 'blueberry_redirector/application'
    helper BlueberryRedirector::RedirectorHelper
  end
end

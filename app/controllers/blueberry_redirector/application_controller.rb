module BlueberryRedirector
  class ApplicationController < Admin::BaseController
    protect_from_forgery with: :exception

    layout 'blueberry_redirector/admin'
    helper BlueberryRedirector::RedirectorHelper
  end
end

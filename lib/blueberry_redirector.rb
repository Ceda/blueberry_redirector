require 'blueberry_redirector/engine'
require 'redirector'

module BlueberryRedirector
  mattr_accessor :admin_controller

  @@admin_controller = 'Admin::BaseController'

  def self.config
    yield self
  end
end

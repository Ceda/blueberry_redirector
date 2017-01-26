class Service
  include ActiveModel::Model
  include Virtus.model

  ValidationError = Class.new(StandardError)

  def self.run(params = {})
    new(params).run
  end

  def execute
    raise NotImplementedError
  end

  def run
    raise ValidationError unless valid?
    execute
  end
end

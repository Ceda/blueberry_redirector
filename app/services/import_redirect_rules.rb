class ImportRedirectRules < Service
  attribute :file
  validates :file, presence: true

  validate :validate_file_name

  def execute
    spreadsheet = Roo::Excelx.new(file.path)
    spreadsheet.each_row_streaming do |row|
      source      = row[0].value
      destination = row[1].value

      rule = RedirectorRule.where(source: path(source)).first_or_initialize
      rule.update_attributes(destination: destination, active: true)
    end
  end

  private

  def path(path)
    if path
      if !path.start_with?('/')
        '/' + path
      else
        path
      end
    end
  end

  def validate_file_name
    errors.add(:file, :invalid) unless file.try(:path) =~ /xlsx?\z/
  end
end

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\.com|\.net|\.org$/i
      record.errors[attribute] << (options[:message] || "must end in com,net,org")
    end
  end
end

# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  part_number :string(255)
#

class Product < ActiveRecord::Base
  attr_accessible :part_number
end

# == Schema Information
#
# Table name: workouts
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  special_instructions :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: workout_logs
#
#  id         :integer          not null, primary key
#  reps       :integer
#  set        :integer
#  pounds     :decimal(, )
#  user_id    :integer
#  workout_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class WorkoutLogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

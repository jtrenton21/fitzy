class Rep < ActiveRecord::Base
  attr_accessible :rep_amount, :rep_weight, :set_rest, :exercise_id
  belongs_to :exercise
end

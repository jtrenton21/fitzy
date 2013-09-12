class Exercise < ActiveRecord::Base
  attr_accessible :name, :info, :muscle_target, :exercise_type,:workout_id, :user_id, :reps_attributes
  
  belongs_to :workout
  belongs_to :user
  has_many :reps
  
  accepts_nested_attributes_for :reps, allow_destroy: true

end

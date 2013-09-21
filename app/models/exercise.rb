class Exercise < ActiveRecord::Base
  include Roleable::Resource
  attr_accessible :name, :info, :_destroy, :muscle_target, :exercise_type, :workouts_attributes, :reps_attributes, :exerciseworkouts_attributes, :user_id, :workout_ids
  attr_accessor :_destroy
  
  belongs_to :user
  
  has_many :workouts, through: :exerciseworkouts
  has_many :exerciseworkouts
  has_many :reps, :inverse_of => :exercise
  
  accepts_nested_attributes_for :reps, allow_destroy: true
  accepts_nested_attributes_for :exerciseworkouts, allow_destroy: true
  accepts_nested_attributes_for :workouts, allow_destroy: true


  #  amoeba do
  #   enable
  #   clone [:workouts]
  # end
end


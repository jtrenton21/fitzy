class Workout < ActiveRecord::Base
  attr_accessible :name, :workout_focus, :day, :exercise_id, :exercises_attributes

 
  has_many :exercises
  has_many :users, through: :userworkouts
  has_many :userworkouts
  accepts_nested_attributes_for :exercises, allow_destroy: true
  
end

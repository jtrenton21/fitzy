class Exerciseworkout < ActiveRecord::Base
	
 attr_accessible :workouts_attributes, :exercises_attributes, :reps_attributes, :routines_attributes

  belongs_to :exercise 
  belongs_to :workout
 
  has_many :routines
  has_many :users, through: :routines
 
  
  accepts_nested_attributes_for :routines
  accepts_nested_attributes_for :users

end

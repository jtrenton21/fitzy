class Workout < ActiveRecord::Base
  attr_accessible :name, :workout_focus, :day, :exercises_attributes
 

 
  
  has_many :users, through: :userworkouts
  has_many :userworkouts
  has_many :exercises
  accepts_nested_attributes_for :exercises, allow_destroy: true
  
 
  def workout_exercise
  end








 end

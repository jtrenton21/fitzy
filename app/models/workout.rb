class Workout < ActiveRecord::Base
  include Roleable::Resource

  attr_accessible :name, :workout_focus, :day, :exercises_attributes, :reps_attributes, :exerciseworkouts_attributes, :user_id, :_destroy
   attr_accessor :_destroy
  
  belongs_to :user
  has_many :exercises, through: :exerciseworkouts
  has_many :exerciseworkouts
  
  accepts_nested_attributes_for :exercises

  #  amoeba do
  #   enable
  # 	clone [:exercises]
  # end
end
class Userworkout < ActiveRecord::Base
  belongs_to :user
  belongs_to :workout
  # attr_accessible :title, :body
end

class UserWorkoutIdIndex < ActiveRecord::Migration
 def change
  add_index :workouts, :user_id

  end
end

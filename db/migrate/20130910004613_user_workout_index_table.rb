class UserWorkoutIndexTable < ActiveRecord::Migration

def change
  	add_index :userworkouts, :user_id
  	add_index :userworkouts, :workout_id
  end
end

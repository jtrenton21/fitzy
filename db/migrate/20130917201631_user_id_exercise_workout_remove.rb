class UserIdExerciseWorkoutRemove < ActiveRecord::Migration
  def up
   remove_column :exerciseworkouts, :user_id
  end

  def down
   add_column :exerciseworkouts, :user_id, :integer
  end
end

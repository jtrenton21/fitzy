class RemoveUserIdExercise < ActiveRecord::Migration
  def up
    remove_column :workouts, :user_id
  end

  def down
    add_column :workouts, :user_id, :integer
  end
end

class AddUserIdExerciseworkoutIndex < ActiveRecord::Migration
  def up
   add_index :exerciseworkouts, :user_id
  end

  def down
   remove_index :exerciseworkouts, :user_id
  end
end

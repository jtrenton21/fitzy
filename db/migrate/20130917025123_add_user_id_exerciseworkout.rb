class AddUserIdExerciseworkout < ActiveRecord::Migration
  def up
  add_column :exerciseworkouts, :user_id, :integer
  end

  def down
   remove_column :exerciseworkouts, :user_id
  end
end

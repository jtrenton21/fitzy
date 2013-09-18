class AddUserId < ActiveRecord::Migration
  def up
  add_column :exercises, :user_id, :integer
  add_column :workouts, :user_id, :integer
  end

  def down
   remove_column :exercises, :user_id
   remove_column :workouts, :user_id

  end
end

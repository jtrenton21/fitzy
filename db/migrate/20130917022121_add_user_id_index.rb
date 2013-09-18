class AddUserIdIndex < ActiveRecord::Migration
  def up
    add_index :workouts, :user_id
    add_index :exercises, :user_id
  end

  def down
    remove_index :workouts, :user_id
    remove_index :exercises, :user_id

  end
end

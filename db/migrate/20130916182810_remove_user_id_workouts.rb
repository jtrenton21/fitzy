class RemoveUserIdWorkouts < ActiveRecord::Migration
 def up
    remove_column :exercises, :user_id
  end

  def down
    add_column :exercises, :user_id, :integer
  end
end

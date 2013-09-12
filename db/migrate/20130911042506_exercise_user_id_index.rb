class ExerciseUserIdIndex < ActiveRecord::Migration
def change
  add_index :exercises, :user_id

  end
end

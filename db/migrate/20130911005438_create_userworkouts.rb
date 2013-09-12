class CreateUserworkouts < ActiveRecord::Migration
  def change
    create_table :userworkouts do |t|
      t.references :user
      t.references :workout

      t.timestamps
    end
    add_index :userworkouts, :user_id
    add_index :userworkouts, :workout_id
  end
end

class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.references :user
      t.references :exerciseworkout

      t.timestamps
    end
    add_index :routines, :user_id
    add_index :routines, :exerciseworkout_id
  end
end

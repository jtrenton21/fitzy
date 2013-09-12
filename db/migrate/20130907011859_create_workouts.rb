class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string   "name"
      t.string   "workout_focus"
      t.integer  "day"
      t.timestamps
    end
  end
end

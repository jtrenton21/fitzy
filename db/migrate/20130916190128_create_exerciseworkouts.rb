class CreateExerciseworkouts < ActiveRecord::Migration
  def change
    create_table :exerciseworkouts do |t|
      t.references :exercise
      t.references :workout

      t.timestamps
    end
    add_index :exerciseworkouts, :exercise_id
    add_index :exerciseworkouts, :workout_id
  end
end

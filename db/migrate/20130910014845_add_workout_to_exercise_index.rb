class AddWorkoutToExerciseIndex < ActiveRecord::Migration
  def change
  add_index :exercises, :workout_id

  end
end

class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
    	t.string   "name"    	
      	t.string   "exercise_type"
      	t.string   "body_target"
        t.string   "muscle_target"
        t.string   "outside_link"
      	t.text     "info"
      	
      	
      t.timestamps
    end
  end
end

class CreateReps < ActiveRecord::Migration
  def change
    create_table :reps do |t|
		  t.integer  "rep_amount"
    	t.integer  "rep_weight"
      t.integer  "set_rest"
      t.integer  "exercise_id"
      t.timestamps
    end
  	
  end
end

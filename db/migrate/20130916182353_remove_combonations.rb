class RemoveCombonations < ActiveRecord::Migration
  def up
 	drop_table :combonations
  end

  def down
  add_table :combonations
  end
end

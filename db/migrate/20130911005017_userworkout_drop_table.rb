class UserworkoutDropTable < ActiveRecord::Migration
  def up
  drop_table :userworkouts
  end

  def down
  add_table :userworkouts
  end
end

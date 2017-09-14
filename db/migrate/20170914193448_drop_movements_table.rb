class DropMovementsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :movements
  end
end

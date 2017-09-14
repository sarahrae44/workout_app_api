class DropMusclesTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :muscles
  end
end

class DropBodyTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :bodyparts
  end
end

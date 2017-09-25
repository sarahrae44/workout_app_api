class AddColumnsToGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :muscleName2, :string
    add_column :groups, :muscleName3, :string
    add_column :groups, :muscleName4, :string
    add_column :groups, :muscleName5, :string
    add_column :groups, :muscleName6, :string
  end
end

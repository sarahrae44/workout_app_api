class ChangeMuscleName < ActiveRecord::Migration[5.1]
  def change
    rename_column :bodies, :name, :musclename
  end
end

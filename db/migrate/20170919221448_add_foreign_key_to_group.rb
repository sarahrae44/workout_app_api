class AddForeignKeyToGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :muscle_group_id, :integer
  end
end

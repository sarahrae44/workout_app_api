class ChangeNameToGroupName < ActiveRecord::Migration[5.1]
  def change
    rename_column :groups, :name, :groupname
  end
end

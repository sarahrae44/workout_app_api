class CreateUsersaves < ActiveRecord::Migration[5.1]
  def change
    create_table :usersaves do |t|
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.integer :usergroupid

      t.timestamps
    end
  end
end

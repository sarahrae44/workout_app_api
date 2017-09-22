class CreateUserexercises < ActiveRecord::Migration[5.1]
  def change
    create_table :userexercises do |t|
      t.string :user
      t.string :references
      t.string :group
      t.string :references
      t.string :usergroupid
      t.string :integer

      t.timestamps
    end
  end
end

class CreateUsergroups < ActiveRecord::Migration[5.1]
  def change
    create_table :usergroups do |t|
      t.references :user
      t.references :group, foreign_key: true
      t.string :usergroupid
      t.string :integer

      t.timestamps
    end
  end
end

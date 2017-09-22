class CreateUserExes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_exes do |t|
      t.references :user, foreign_key: true
      t.references :exercise, foreign_key: true
      t.integer :userexid

      t.timestamps
    end
  end
end

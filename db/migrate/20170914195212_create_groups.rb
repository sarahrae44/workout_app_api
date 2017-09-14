class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.references :body, foreign_key: true
      t.references :exercise, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

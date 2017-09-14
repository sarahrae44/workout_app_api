class CreateMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :movements do |t|
      t.string :name
      t.string :img
      t.string :desc
      t.time :time

      t.timestamps
    end
  end
end

class AddExerciseToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :savedexercisesname, :string
  end
end

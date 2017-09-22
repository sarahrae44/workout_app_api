class AddExerciseDescToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :savedexercisesdesc, :string 
  end
end

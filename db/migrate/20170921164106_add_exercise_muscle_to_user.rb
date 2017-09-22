class AddExerciseMuscleToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :savedexercisesgroup, :string 
  end
end

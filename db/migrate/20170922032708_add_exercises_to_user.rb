class AddExercisesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :exercise_id, :integer
  end
end

class ChangeExerciseName < ActiveRecord::Migration[5.1]
  def change
    rename_column :exercises, :name, :exercisename
  end
end

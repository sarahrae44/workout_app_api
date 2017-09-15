class RemoveTimeFromExercise < ActiveRecord::Migration[5.1]
  def change
    remove_column :exercises, :time
  end
end

class CreateMuscleGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :muscle_groups do |t|
      t.string :muscleGroupName

      t.timestamps
    end
  end
end

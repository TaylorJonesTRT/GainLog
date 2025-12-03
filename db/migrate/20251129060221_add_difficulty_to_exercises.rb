class AddDifficultyToExercises < ActiveRecord::Migration[8.0]
  def change
    add_column :exercises, :difficulty, :string
  end
end

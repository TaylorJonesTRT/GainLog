class AddWorkoutNameToWorkout < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :workout_name, :string
  end
end

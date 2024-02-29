class AddNameToWorkouts < ActiveRecord::Migration[7.1]
  def change
    add_column :workouts, :name, :string
  end
end

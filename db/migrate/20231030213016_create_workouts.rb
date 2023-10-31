class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.references :user, null: false, foreign_key: true
      t.date :workout_date

      t.timestamps
    end
  end
end

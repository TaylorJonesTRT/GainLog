class CreateWorkoutSets < ActiveRecord::Migration[8.0]
  def change
    create_table :workout_sets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true
      t.integer :exercise_id
      t.integer :reps
      t.decimal :weight
      t.integer :set_order
      t.string :notes
      t.integer :rest_time


      t.timestamps
    end
  end
end

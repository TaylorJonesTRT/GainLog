class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.references :workout, null: false, foreign_key: true
      t.integer :exercise_id
      t.json :set_data

      t.timestamps
    end
  end
end

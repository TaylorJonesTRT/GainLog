class CreateRepSets < ActiveRecord::Migration[7.0]
  def change
    create_table :rep_sets do |t|
      t.integer :reps
      t.float :weight
      t.references :exercise, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end

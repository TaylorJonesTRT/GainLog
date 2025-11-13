class CreateExercises < ActiveRecord::Migration[8.0]
  def change
    create_table :exercises do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

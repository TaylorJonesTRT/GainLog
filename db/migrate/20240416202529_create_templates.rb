class CreateTemplates < ActiveRecord::Migration[7.1]
  def change
    create_table :templates do |t|
      t.string :name
      t.integer :exercise_ids, array: true, default: []

      t.timestamps
    end
  end
end

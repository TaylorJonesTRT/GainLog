class AddEquipmentToExercises < ActiveRecord::Migration[8.0]
  def change
    add_column :exercises, :equipment, :string
  end
end

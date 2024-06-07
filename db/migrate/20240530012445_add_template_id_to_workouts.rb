class AddTemplateIdToWorkouts < ActiveRecord::Migration[7.1]
  def change
    add_column :workouts, :template_id, :integer
  end
end

class AddTrainingsIdToRepSet < ActiveRecord::Migration[7.0]
  def change
    add_reference :rep_sets, :training, null: false, foreign_key: true
  end
end

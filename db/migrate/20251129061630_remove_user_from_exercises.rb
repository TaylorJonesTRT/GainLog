class RemoveUserFromExercises < ActiveRecord::Migration[8.0]
  def change
    remove_reference :exercises, :user, null: false, foreign_key: true
  end
end

class AddUserReferenceToTemplates < ActiveRecord::Migration[7.1]
  def change
    add_reference :templates, :user, null: false, foreign_key: true
  end
end

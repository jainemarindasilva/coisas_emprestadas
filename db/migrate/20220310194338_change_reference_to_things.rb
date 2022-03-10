class ChangeReferenceToThings < ActiveRecord::Migration[7.0]
  def change
    change_column_null :things, :loan_id, null: true
  end
end

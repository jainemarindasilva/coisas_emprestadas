class AddReferenceToThings < ActiveRecord::Migration[7.0]
  def change
    add_reference :things, :loan, foreign_key: true
  end
end

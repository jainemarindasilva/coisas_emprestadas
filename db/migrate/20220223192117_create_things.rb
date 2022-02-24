class CreateThings < ActiveRecord::Migration[7.0]
  def change
    create_table :things do |t|
      t.string :description, null: false
      t.timestamps
    end
  end
end

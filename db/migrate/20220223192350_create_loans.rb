class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.references :contact
      t.datetime :due_date, null: false
      t.timestamps
    end
  end
end

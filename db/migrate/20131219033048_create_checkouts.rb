class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id, null: false
      t.string :name, null: false
      t.string :phone_number, null: false

      t.timestamps
    end
  end
end

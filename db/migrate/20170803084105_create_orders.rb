class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :address
      t.integer :zip_code
      t.string :receiver
      t.integer :phone_number
      t.text :requirements
      t.decimal :total_price, precision: 10
      t.belongs_to :user

      t.timestamps
    end
  end
end

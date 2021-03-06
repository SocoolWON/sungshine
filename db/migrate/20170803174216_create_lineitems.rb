class CreateLineitems < ActiveRecord::Migration[5.0]
  def change
    create_table :lineitems do |t|
      t.integer :quantity, default: 1
      t.belongs_to :user
      t.belongs_to :product
      t.belongs_to :order
      t.belongs_to :cart

      t.timestamps
    end
  end
end

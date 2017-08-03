class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :category
      t.text :description
      t.string :feature
      t.string :image_url
      t.decimal :price, precision: 6
      t.belongs_to :admin
      t.belongs_to :user

      t.timestamps
    end

    add_index :products, :feature
  end
end

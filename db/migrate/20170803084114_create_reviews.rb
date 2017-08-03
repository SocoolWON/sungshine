class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.integer :satisfaction  # maximum 5 min 1
      t.belongs_to :user
      t.belongs_to :product

      t.timestamps
    end
  end
end

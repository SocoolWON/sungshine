class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :category
      t.belongs_to :user
      t.belongs_to :admin

      t.timestamps
    end
  end
end

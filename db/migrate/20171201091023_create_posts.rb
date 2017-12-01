class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.string :menu_label
      t.text :h1
      t.text :content
      t.integer :priority

      t.timestamps
    end
  end
end

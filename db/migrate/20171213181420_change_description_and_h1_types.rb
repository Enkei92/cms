class ChangeDescriptionAndH1Types < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :description, :string
    change_column :posts, :h1, :string
  end
end

class AddImageToBooks < ActiveRecord::Migration
  def change
    add_column :books, :img, :string
  end
end

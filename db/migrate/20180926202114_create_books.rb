class CreateBooks < ActiveRecord::Migration #[5.1]
  def change
    create_table :books do |t|
      t.string :image
      t.text :price
      t.text :title
      t.text :isbn
      t.text :condition
      t.text :subject
      t.text :description
      t.references :user
      t.timestamps 
    end
  end
end

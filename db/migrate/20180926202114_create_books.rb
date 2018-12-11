class CreateBooks < ActiveRecord::Migration #[5.1]
  def change
    create_table :books do |t|
      
      t.text :title
      t.text :isbn
      t.text :price
      
      t.text :description
      t.text :condition
      t.text :subject
      
      t.references :user
      t.timestamps 
    end
  end
end

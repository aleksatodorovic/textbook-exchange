class CreateBooks < ActiveRecord::Migration #[5.1]
  def change
    create_table :books do |t|
      t.text :price
      t.text :title
      t.text :isbn

      t.references :user
      t.timestamps 
    end
  end
end

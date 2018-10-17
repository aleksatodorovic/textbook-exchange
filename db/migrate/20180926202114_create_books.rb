class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.text :isbn
<<<<<<< HEAD
      t.text :author
      #t.timestamps
=======
      t.references :user
      t.timestamps
>>>>>>> 93a909a07d84395832d4cc8228f134c807eebcff
    end
  end
end

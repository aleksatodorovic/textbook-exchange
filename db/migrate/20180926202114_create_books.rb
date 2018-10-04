class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title

      t.timestamps
    end
  end
end

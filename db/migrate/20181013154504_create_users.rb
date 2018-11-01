class CreateUsers < ActiveRecord::Migration #[5.1]
  def change
    create_table :users do |t|
      t.text :name
      t.string "password_digest"
      t.text :phone
      t.timestamps null: false
    end
  end
end

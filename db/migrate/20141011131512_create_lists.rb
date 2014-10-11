class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :username
      t.string :password_digest
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end

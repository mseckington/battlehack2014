class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :image
      t.integer :position
      t.integer :list_id

      t.timestamps
    end
  end
end

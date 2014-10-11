class SetupDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :price
      t.text :message
      t.string :twitter_id
      t.integer :list_id
      t.timestamps
    end
  end
end

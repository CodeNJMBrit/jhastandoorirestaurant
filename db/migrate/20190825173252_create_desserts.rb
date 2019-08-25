class CreateDesserts < ActiveRecord::Migration[5.2]
  def change
    create_table :desserts do |t|
      t.string :name
      t.text :information
      t.string :price

      t.timestamps
    end
  end
end

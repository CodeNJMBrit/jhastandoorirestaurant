class CreateInseaFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :insea_foods do |t|
      t.string :name
      t.text :information
      t.string :price

      t.timestamps
    end
  end
end

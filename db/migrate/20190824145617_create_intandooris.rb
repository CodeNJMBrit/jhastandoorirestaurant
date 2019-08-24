class CreateIntandooris < ActiveRecord::Migration[5.2]
  def change
    create_table :intandooris do |t|
      t.string :name
      t.text :information
      t.string :price

      t.timestamps
    end
  end
end

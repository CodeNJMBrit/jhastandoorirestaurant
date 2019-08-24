class CreateIndeserts < ActiveRecord::Migration[5.2]
  def change
    create_table :indeserts do |t|
      t.string :name
      t.string :information
      t.string :price

      t.timestamps
    end
  end
end

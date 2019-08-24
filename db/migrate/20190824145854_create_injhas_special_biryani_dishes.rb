class CreateInjhasSpecialBiryaniDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :injhas_special_biryani_dishes do |t|
      t.string :name
      t.text :information
      t.string :price

      t.timestamps
    end
  end
end

class CreateInchefRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :inchef_recommendations do |t|
      t.string :name
      t.text :information
      t.string :price

      t.timestamps
    end
  end
end

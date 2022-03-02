class CreateFoodMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :food_meals do |t|
      t.belongs_to :food, null: false, foreign_key: true
      t.belongs_to :meal, null: false, foreign_key: true
  
      t.timestamps
    end
  end
end

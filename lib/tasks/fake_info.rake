namespace :db do
  require 'faker'
  desc "假資料"
  task :fake_data => :environment do

    10.times do 
      Food.create!(name: Faker::Food.vegetables)
      Meal.create!(name: Faker::Food.dish)
    end

    puts "Food&Meal ok"

    10.times do 
      Meal.first.foods.create!(name: Faker::Food.vegetables)
    end

    puts "FoodMeal created!"
  end
end
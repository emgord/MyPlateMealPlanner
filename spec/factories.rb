FactoryGirl.define do

  # meal =   Meal.create(meal: "Dinner", day: "Saturday", meal_name: "Lasagna", description: "Yum")

  factory :meal do #name to match the class and it will infer, otherwise specify class: class: Product
    meal "Dinner"
    day "Saturday"
    meal_name "Lasagna"
    description "yummy"
    association :user
  end

  factory :ingredient do
    ingredient_name "cheese"
    food_group "Dairy"
    shopping_list true
    association :meal
  end

  factory :user do
    username "test_user"
    email "a@test.com"
    email_confirmation "a@test.com"
    password "password"
    password_confirmation "password"
  end

end

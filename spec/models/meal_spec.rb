require 'rails_helper'

RSpec.describe Meal, type: :model do

  let(:ingredient) { create(:ingredient) }
  let(:meal) { ingredient.meal }

  describe "#food_groups" do
    it "returns an array with the food groups for the meal" do
      expect(meal.food_groups).to eq(["Dairy"])
    end
  end

  describe "#needed_food_groups" do
    it "returns an array with the food groups missing from the meal" do
      expect(meal.needed_food_groups).to eq(["Grains", "Protein", "Vegetables", "Fruits"])
    end
  end

  describe "#needed" do
    it "returns selected if the meal has a food group" do
      expect(meal.needed("Dairy")).to eq("selected")
    end
    it "returns needed if the meal does not have a food group" do
      expect(meal.needed("Fruits")).to eq("needed")
    end
  end

  describe "#food_group_count" do
    it "returns the number of food groups a meal has" do
      expect(meal.food_group_count).to eq(1)
    end
  end

end

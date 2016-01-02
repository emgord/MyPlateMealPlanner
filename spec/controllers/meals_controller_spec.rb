require 'rails_helper'

RSpec.describe MealsController, type: :controller do

  let(:meal) do
    Meal.create(meal: "Dinner", day: "Saturday", meal_name: "Lasagna", description: "Yum")
  end

  describe "GET #index" do
    it "renders the index view" do
      get :index
      expect(subject).to render_template :index
    end
  end

  describe "GET #new" do
    it "renders the new view" do
      get :new
      expect(subject).to render_template :new
    end
  end

  describe "POST 'create'" do
    let(:params) do
      {
        meal: {
          meal: "Dinner",
          day: "Friday",
          meal_name: "Mac and Cheese",
          description: "Mmm...cheese"
        }
      }
    end

    it "redirects to the show view" do
      post :create, params
      expect(subject).to redirect_to meal_path(1)
    end
  end

  describe "GET 'show'" do
    it "renders the show view" do
      get :show, id: meal.id
      expect(subject).to render_template :show
    end
  end

  describe "GET #edit" do
    it "renders the edit view" do
      get :edit, id: meal.id
      expect(subject).to render_template :edit
    end
  end

  describe "PATCH 'update'" do
    let(:updated_params) do
      {
        meal: {
          meal: "Dinner",
          day: "Friday",
          meal_name: "Mac and Cheese",
          description: "Now even cheesier!"
        }
      }
    end

    it "redirects to the show view" do
      patch :update, {id: meal.id, meal: updated_params}
      expect(subject).to redirect_to meal_path(1)
    end
  end

  describe "DELETE 'destroy'" do
    it "redirects to the root path" do
      delete :destroy, id: meal.id
      expect(subject).to redirect_to root_path
    end
  end

end

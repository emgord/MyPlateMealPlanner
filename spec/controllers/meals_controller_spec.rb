require 'rails_helper'

RSpec.describe MealsController, type: :controller do
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
            name: "Dinner",
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

end

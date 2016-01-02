require 'rails_helper'

RSpec.describe MealsController, type: :controller do
  describe "GET #index" do
    it "renders the index view" do
      get :index
      expect(subject).to render_template :index
    end
  end


end

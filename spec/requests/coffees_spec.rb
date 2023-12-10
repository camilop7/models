require 'rails_helper'

RSpec.describe "/coffees", type: :request do
  let(:valid_user) { FactoryBot.create(:user) }
  let(:valid_attributes) { FactoryBot.attributes_for(:coffee, user: valid_user) }
  let(:invalid_attributes) { FactoryBot.attributes_for(:coffee, :invalid_coffee) }

  describe "GET /index" do
    before do
      Coffee.create!(valid_attributes)
      get coffees_url
    end

    it "renders a successful response" do
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      coffee = Coffee.create!(valid_attributes)
      get coffee_url(coffee)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_coffee_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      coffee = Coffee.create!(valid_attributes)
      get edit_coffee_url(coffee)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with invalid parameters" do
      it "does not create a new Coffee" do
        expect {
          post coffees_url, params: { coffee: invalid_attributes }
        }.to change(Coffee, :count).by(0)
      end

      it "renders a response with 422 status" do
        post coffees_url, params: { coffee: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    let(:new_attributes) { { roasted_for: "Dark Roast" } }

    context "with valid parameters" do
      let!(:coffee) { Coffee.create!(valid_attributes) }

      it "updates the requested coffee" do
        patch coffee_url(coffee), params: { coffee: new_attributes }
        coffee.reload

        expect(coffee.roasted_for).to eq("Dark Roast")
      end

      it "redirects to the coffee" do
        patch coffee_url(coffee), params: { coffee: new_attributes }
        coffee.reload
        expect(response).to redirect_to(coffee_url(coffee))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status" do
        coffee = Coffee.create!(valid_attributes)
        patch coffee_url(coffee), params: { coffee: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested coffee" do
      coffee = Coffee.create!(valid_attributes)
      expect {
        delete coffee_url(coffee)
      }.to change(Coffee, :count).by(-1)
    end

    it "redirects to the coffees list" do
      coffee = Coffee.create!(valid_attributes)
      delete coffee_url(coffee)
      expect(response).to redirect_to(coffees_url)
    end
  end
end

require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:review) { build(:review) }
  let(:user) { create(:user) }

  it "is valid with valid attributes" do
    expect(review).to be_valid
  end

  it "should be invalid without comments" do
    review.comments = nil
    expect(review).not_to be_valid
  end

  it "should be invalid without a rating" do
    review.rating = nil
    expect(review).not_to be_valid
  end

  it "is associated with a coffee" do
    expect(review.coffee).to be_a(Coffee)
  end

  it "is associated with a user" do
    expect(review.user).to be_a(User)
  end
end

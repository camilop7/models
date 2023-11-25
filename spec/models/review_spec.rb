require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:review) { build(:review) }

  it "is valid with valid attributes" do
    expect(review).to be_valid
  end

  it "should be invalid without content" do
    review.comments = nil
    expect(review).not_to be_valid
  end

  it "is associated with a user" do
    user = build(:user)
    review.user = user

    expect(review.user).to eq(user)
  end
end

# spec/models/coffee_spec.rb

require 'rails_helper'

RSpec.describe Coffee, type: :model do
  let(:coffee) { build(:coffee) }

  it "is valid with valid attributes" do
    expect(coffee).to be_valid
  end

  it "should be invalid without origin" do
    coffee.origin = nil
    expect(coffee).not_to be_valid
  end

  it "should be invalid without roasted_for" do
    coffee.roasted_for = nil
    expect(coffee).not_to be_valid
  end
end

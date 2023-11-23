require 'rails_helper'

  RSpec.describe User, type: :model do
    let(:user) {build(:user)}
    it "is valid with valid attributes" do
      expect(user).to be_valid
  end

  it "should be invalid with a date of birth in the future" do
    user.date_of_birth = Time.now + 1.day
    expect(user).not_to be_valid
  end
end

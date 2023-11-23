require 'rails_helper'

  RSpec.describe User, type: :model do
    it "is valid with valid attributes" do
      user = User.new(
        name: "John Doe",
        date_of_birth: "1990-01-01",
      )

      expect(user).to be_valid

  end

  it "should be invalid with a date of birth in the future" do
    user = User.new(
      name: "John Doe",
      date_of_birth: Time.now + 1.day,
    )

    expect(user).not_to be_valid

  end
end

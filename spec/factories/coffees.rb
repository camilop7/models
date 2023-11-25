FactoryBot.define do
  factory :coffee do
    origin { "MyString" }
    roasted_for { "MyString" }
    score { 1.5 }
    user_rating { 1.5 }
    rating { nil }
    reviews { nil }
  end
end

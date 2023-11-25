FactoryBot.define do
  factory :review do
    user
    coffee_id { 1 }
    comments { "MyString" }
    rating { 1 }
  end
end

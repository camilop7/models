FactoryBot.define do
  factory :review do
    user_id { 1 }
    coffee_id { 1 }
    comments { "MyString" }
    rating { 1 }
  end
end

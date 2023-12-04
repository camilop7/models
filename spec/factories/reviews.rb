FactoryBot.define do
  factory :review do
    coffee
    user
    comments { 'MyText' }
    rating { 1.5 }
  end
end

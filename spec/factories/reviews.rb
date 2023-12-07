FactoryBot.define do
  factory :review do
    coffee
    user
    comments { 'MyText' }
    rating { 1.5 }

    trait :invalid_review do
      comments { nil }
    end
  end
end

FactoryBot.define do
  factory :user do
    name {"name1"}

    date_of_birth {Time.now - 10.years}

    factory :invalid_user do
      date_of_birth {Time.now + 10.years}
    end
  end
end

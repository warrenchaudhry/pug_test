FactoryGirl.define do
  factory :user do
    email                 { Faker::Internet.email }
    first_name            { Faker::Name.first_name }
    last_name             { Faker::Name.last_name }
    country               'Philippines'
    language              'English'
    password              "password1234"
    password_confirmation "password1234"

    trait :admin do
      is_admin      true
    end

    trait :paying do
      is_paying     true
    end

  end
end

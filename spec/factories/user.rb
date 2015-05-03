FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "asdasdasd"
    password_confirmation "asdasdasd"

    trait :incorrect do
      password_confirmation "123123123"
    end
  end
end
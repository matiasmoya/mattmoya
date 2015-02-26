FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    password "asdasdasd"
    password_confirmation "asdasdasd"
  end
end
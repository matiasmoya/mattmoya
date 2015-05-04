FactoryGirl.define do
  factory :article do
    sequence(:title)      {|n| "Article title #{n}"}
    subtitle              "An Subtitle"
    body                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
    excerpt               "Lorem ipsum dolor"
    user                  nil
    status                1
  end
end

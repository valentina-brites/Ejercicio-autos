FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "john#{n}@doe.com" }
    password { "password" }
  end
end

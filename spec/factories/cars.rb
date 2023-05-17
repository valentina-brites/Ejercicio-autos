FactoryBot.define do
  factory :car do
    brand { "MyString" }
    model { "MyString" }
    price { "9.99" }
    user { FactoryBot.create(:user) }
  end
end

FactoryBot.define do
  factory :user do
    username { Faker::Internet.username(:specifier => 5..15) }
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
  end
end

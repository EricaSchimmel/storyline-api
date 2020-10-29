FactoryBot.define do
  factory :user do
    username { "test_user" }
    email { "test@exmaple.com" }
    password { "password" }
  end
end

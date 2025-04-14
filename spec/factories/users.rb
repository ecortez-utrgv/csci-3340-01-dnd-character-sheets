FactoryBot.define do
  factory :user do
    email_address { Faker::Internet.email }
    password_user = Faker::Internet.password
    password { password_user }
  end
end

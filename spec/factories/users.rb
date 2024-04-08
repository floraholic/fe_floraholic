FactoryBot.define do
  factory :user do
    f_name { Faker::Name.first_name }
    l_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.cell_phone }
    street { Faker::Address.street_name }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip { Faker::Address.zip_code }
    password { Faker::Internet.password }
  end
end

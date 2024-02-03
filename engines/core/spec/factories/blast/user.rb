module Blast
  FactoryBot.define do
    factory :user, class: 'Blast/User' do
      email { Faker::Internet.email }
      password { 'password' }
      password_confirmation { 'password' }
    end

    factory :admin, class: 'Blast/User' do
      email { Faker::Internet.email }
      password { 'password' }
      password_confirmation { 'password' }
      admin { true }
    end
  end
end
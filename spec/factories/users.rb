FactoryBot.define do
  factory :user do
    name { 'John' }
    password  { '12345678' }
    email { "john@gmail.com" }
    balance { 0.000025 }
  end
end 
FactoryBot.define do
  factory :pokemon do
    name { "Pikachu" }
    price { "9.99" }
    base_experience { 135 }
    association :user, factory: :user
  end
end

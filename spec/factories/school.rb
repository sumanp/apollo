FactoryBot.define do
  factory :school do
    name { "ISB" }
    description { "some description" }
    association :user, factory: :user
  end
end
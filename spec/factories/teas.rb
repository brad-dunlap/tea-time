FactoryBot.define do
  factory :tea do
    title { Faker::Tea.variety }
    description { Faker::Lorem.sentence }
    temperature { Faker::Number.between(from: 80, to: 100) }
    brew_time { Faker::Number.between(from: 1, to: 5) }

  end
end

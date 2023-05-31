FactoryBot.define do
  factory :subscription do
    title { Faker::Hipster.words(number: 3).join(' ') }
    price { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    status { Subscription.statuses.keys.sample }
    frequency { Subscription.frequencies.keys.sample }
  end
end

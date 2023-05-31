require 'faker'

FactoryBot.define do
  factory :customer do
    transient do
      full_name { Faker::Movies::HarryPotter.character }
    end

    first_name { full_name.include?(' ') ? full_name.split(' ')[0..-2].join(' ') : full_name }
    last_name { full_name.include?(' ') ? full_name.split(' ').last : 'Potter' }
    email { "#{first_name.downcase.gsub(' ', '')}.#{last_name.downcase}@hogwarts.edu" }
    address { Faker::Address.full_address }
  end
end

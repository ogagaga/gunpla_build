FactoryBot.define do
  factory :member do
    sequence(:email) { |n| "TEST#{n}@example.com"}
    password { 'p@ssp0rd' }
  end
end

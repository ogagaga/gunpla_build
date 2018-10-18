FactoryBot.define do
  factory :member do
    factory :alice do
      email { 'alice@example.com' }
      password { 'p@ssp0rd' }
      confirmed_at { Time.zone.now }
    end

    sequence(:email) { |n| "TEST#{n}@example.com"}
    password { 'p@ssp0rd' }
  end
end

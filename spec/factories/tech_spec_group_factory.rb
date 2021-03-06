# frozen_string_literal: true

FactoryBot.define do
  factory :tech_spec_group, class: 'TechSpecGroup' do
    id         { Faker::Number.number(digits: 5) }
    name       { Faker::Book.genre }
    priority   { Faker::Number.number(digits: 2) }
    created_at { Time.now }
    updated_at { created_at }

    initialize_with do
      new(attributes)
    end
  end
end

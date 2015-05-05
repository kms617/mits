FactoryGirl.define do
  factory :task do
    sequence(:name) { |n| "task#{n}" }

    trait :completed_task do
      completed_at Time.now
    end
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    description "MyText"
    user_id 1
  end
end

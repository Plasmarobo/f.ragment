# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :workspace do
    game_id 1
    variable_limit 1
    register_limit 1
  end
end

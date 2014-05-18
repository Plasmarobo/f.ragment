# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :program do
    game_id 1
    user_id 1
    size_limit 1
    system_fragments 1
  end
end

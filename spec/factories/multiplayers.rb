# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :multiplayer do
    name "MyString"
    user_id 1
    game_id 1
    permission_type 1
  end
end

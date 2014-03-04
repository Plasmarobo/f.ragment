# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    gamesettings_id 1
    name "MyString"
    difficulty 1
    user_id 1
    multiplayer_id 1
  end
end

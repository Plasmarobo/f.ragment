# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_preference, :class => 'UserPreferences' do
    user_id 1
    text_speed 1
    theme "MyString"
    autoplay false
    animation false
  end
end

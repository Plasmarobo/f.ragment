# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :system_fragment do
    display_text "MyString"
    function "MyString"
    time 1
    length 1
  end
end

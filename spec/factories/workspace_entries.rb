# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :workspace_entry do
    workspace_id 1
    name "MyString"
    value "MyString"
  end
end

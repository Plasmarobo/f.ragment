# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :program do
    name "MyString"
    exec_time 1
    result_hash "MyString"
    item_id 1
    reward 1
  end
end

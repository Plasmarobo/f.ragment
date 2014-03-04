# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :level do
    name "MyString"
    random_seed 1
    dialog_id 1
    time_limit 1
    matrix_speed 1
    program_id 1
    theme "MyString"
  end
end

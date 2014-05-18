# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game_sync do
    game_id 1
    time_id 1
    start_time "2014-05-18 11:10:58"
    time_limit 1
    started false
    pause_time "2014-05-18 11:10:58"
  end
end

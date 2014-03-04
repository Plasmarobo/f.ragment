require 'spec_helper'

describe "games/new" do
  before(:each) do
    assign(:game, stub_model(Game,
      :gamesettings_id => 1,
      :name => "MyString",
      :difficulty => 1,
      :user_id => 1,
      :multiplayer_id => 1
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", games_path, "post" do
      assert_select "input#game_gamesettings_id[name=?]", "game[gamesettings_id]"
      assert_select "input#game_name[name=?]", "game[name]"
      assert_select "input#game_difficulty[name=?]", "game[difficulty]"
      assert_select "input#game_user_id[name=?]", "game[user_id]"
      assert_select "input#game_multiplayer_id[name=?]", "game[multiplayer_id]"
    end
  end
end

require 'spec_helper'

describe "games/index" do
  before(:each) do
    assign(:games, [
      stub_model(Game,
        :gamesettings_id => 1,
        :name => "Name",
        :difficulty => 2,
        :user_id => 3,
        :multiplayer_id => 4
      ),
      stub_model(Game,
        :gamesettings_id => 1,
        :name => "Name",
        :difficulty => 2,
        :user_id => 3,
        :multiplayer_id => 4
      )
    ])
  end

  it "renders a list of games" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end

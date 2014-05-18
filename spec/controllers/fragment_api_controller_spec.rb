require 'spec_helper'

describe FragmentApiController do

  describe "GET 'gen_player'" do
    it "returns http success" do
      get 'gen_player'
      response.should be_success
    end
  end

  describe "GET 'gen_system'" do
    it "returns http success" do
      get 'gen_system'
      response.should be_success
    end
  end

  describe "GET 'validate'" do
    it "returns http success" do
      get 'validate'
      response.should be_success
    end
  end

  describe "GET 'compile'" do
    it "returns http success" do
      get 'compile'
      response.should be_success
    end
  end

  describe "GET 'sync_time'" do
    it "returns http success" do
      get 'sync_time'
      response.should be_success
    end
  end

end

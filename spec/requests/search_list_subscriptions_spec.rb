require 'spec_helper'

describe "SearchListSubscriptions" do
  describe "GET /search_list_subscriptions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get search_list_subscriptions_path
      response.status.should be(200)
    end
  end
end

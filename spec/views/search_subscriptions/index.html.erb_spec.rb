require 'spec_helper'

describe "search_subscriptions/index.html.erb" do
  before(:each) do
    assign(:search_subscriptions, [
      stub_model(SearchSubscription),
      stub_model(SearchSubscription)
    ])
  end

  it "renders a list of search_subscriptions" do
    render
  end
end

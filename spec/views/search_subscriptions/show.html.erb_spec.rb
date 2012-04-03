require 'spec_helper'

describe "search_subscriptions/show.html.erb" do
  before(:each) do
    @search_subscription = assign(:search_subscription, stub_model(SearchSubscription))
  end

  it "renders attributes in <p>" do
    render
  end
end

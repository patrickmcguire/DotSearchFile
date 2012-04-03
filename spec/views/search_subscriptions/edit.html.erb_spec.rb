require 'spec_helper'

describe "search_subscriptions/edit.html.erb" do
  before(:each) do
    @search_subscription = assign(:search_subscription, stub_model(SearchSubscription))
  end

  it "renders the edit search_subscription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => search_subscriptions_path(@search_subscription), :method => "post" do
    end
  end
end

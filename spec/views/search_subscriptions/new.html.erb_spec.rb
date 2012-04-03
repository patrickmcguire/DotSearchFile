require 'spec_helper'

describe "search_subscriptions/new.html.erb" do
  before(:each) do
    assign(:search_subscription, stub_model(SearchSubscription).as_new_record)
  end

  it "renders new search_subscription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => search_subscriptions_path, :method => "post" do
    end
  end
end

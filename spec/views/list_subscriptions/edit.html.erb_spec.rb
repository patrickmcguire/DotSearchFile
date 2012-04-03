require 'spec_helper'

describe "list_subscriptions/edit.html.erb" do
  before(:each) do
    @list_subscription = assign(:list_subscription, stub_model(ListSubscription))
  end

  it "renders the edit list_subscription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => list_subscriptions_path(@list_subscription), :method => "post" do
    end
  end
end

require 'spec_helper'

describe "list_subscriptions/new.html.erb" do
  before(:each) do
    assign(:list_subscription, stub_model(ListSubscription).as_new_record)
  end

  it "renders new list_subscription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => list_subscriptions_path, :method => "post" do
    end
  end
end

require 'spec_helper'

describe "list_subscriptions/show.html.erb" do
  before(:each) do
    @list_subscription = assign(:list_subscription, stub_model(ListSubscription))
  end

  it "renders attributes in <p>" do
    render
  end
end

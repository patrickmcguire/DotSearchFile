require 'spec_helper'

describe "list_subscriptions/index.html.erb" do
  before(:each) do
    assign(:list_subscriptions, [
      stub_model(ListSubscription),
      stub_model(ListSubscription)
    ])
  end

  it "renders a list of list_subscriptions" do
    render
  end
end

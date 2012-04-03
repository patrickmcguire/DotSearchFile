require 'spec_helper'

describe "list_ownerships/index.html.erb" do
  before(:each) do
    assign(:list_ownerships, [
      stub_model(ListOwnership),
      stub_model(ListOwnership)
    ])
  end

  it "renders a list of list_ownerships" do
    render
  end
end

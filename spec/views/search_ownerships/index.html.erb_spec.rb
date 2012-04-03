require 'spec_helper'

describe "search_ownerships/index.html.erb" do
  before(:each) do
    assign(:search_ownerships, [
      stub_model(SearchOwnership),
      stub_model(SearchOwnership)
    ])
  end

  it "renders a list of search_ownerships" do
    render
  end
end

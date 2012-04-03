require 'spec_helper'

describe "search_ownerships/show.html.erb" do
  before(:each) do
    @search_ownership = assign(:search_ownership, stub_model(SearchOwnership))
  end

  it "renders attributes in <p>" do
    render
  end
end

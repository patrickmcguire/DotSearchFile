require 'spec_helper'

describe "search_ownerships/edit.html.erb" do
  before(:each) do
    @search_ownership = assign(:search_ownership, stub_model(SearchOwnership))
  end

  it "renders the edit search_ownership form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => search_ownerships_path(@search_ownership), :method => "post" do
    end
  end
end

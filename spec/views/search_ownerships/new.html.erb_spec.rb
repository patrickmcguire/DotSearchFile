require 'spec_helper'

describe "search_ownerships/new.html.erb" do
  before(:each) do
    assign(:search_ownership, stub_model(SearchOwnership).as_new_record)
  end

  it "renders new search_ownership form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => search_ownerships_path, :method => "post" do
    end
  end
end

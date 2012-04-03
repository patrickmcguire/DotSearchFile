require 'spec_helper'

describe "search_lists/new.html.erb" do
  before(:each) do
    assign(:search_list, stub_model(SearchList).as_new_record)
  end

  it "renders new search_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => search_lists_path, :method => "post" do
    end
  end
end

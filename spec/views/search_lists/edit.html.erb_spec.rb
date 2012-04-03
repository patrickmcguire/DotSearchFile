require 'spec_helper'

describe "search_lists/edit.html.erb" do
  before(:each) do
    @search_list = assign(:search_list, stub_model(SearchList))
  end

  it "renders the edit search_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => search_lists_path(@search_list), :method => "post" do
    end
  end
end

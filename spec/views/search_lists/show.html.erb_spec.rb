require 'spec_helper'

describe "search_lists/show.html.erb" do
  before(:each) do
    @search_list = assign(:search_list, stub_model(SearchList))
  end

  it "renders attributes in <p>" do
    render
  end
end

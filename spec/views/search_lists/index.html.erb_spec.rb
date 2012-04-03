require 'spec_helper'

describe "search_lists/index.html.erb" do
  before(:each) do
    assign(:search_lists, [
      stub_model(SearchList),
      stub_model(SearchList)
    ])
  end

  it "renders a list of search_lists" do
    render
  end
end

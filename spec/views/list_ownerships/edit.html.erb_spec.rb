require 'spec_helper'

describe "list_ownerships/edit.html.erb" do
  before(:each) do
    @list_ownership = assign(:list_ownership, stub_model(ListOwnership))
  end

  it "renders the edit list_ownership form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => list_ownerships_path(@list_ownership), :method => "post" do
    end
  end
end

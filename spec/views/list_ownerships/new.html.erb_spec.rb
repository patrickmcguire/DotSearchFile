require 'spec_helper'

describe "list_ownerships/new.html.erb" do
  before(:each) do
    assign(:list_ownership, stub_model(ListOwnership).as_new_record)
  end

  it "renders new list_ownership form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => list_ownerships_path, :method => "post" do
    end
  end
end

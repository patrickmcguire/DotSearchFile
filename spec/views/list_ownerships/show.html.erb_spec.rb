require 'spec_helper'

describe "list_ownerships/show.html.erb" do
  before(:each) do
    @list_ownership = assign(:list_ownership, stub_model(ListOwnership))
  end

  it "renders attributes in <p>" do
    render
  end
end

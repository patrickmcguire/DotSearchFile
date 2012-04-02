require 'spec_helper'

describe "lolwuts/edit.html.erb" do
  before(:each) do
    @lolwut = assign(:lolwut, stub_model(Lolwut,
      :lolwut => "MyString"
    ))
  end

  it "renders the edit lolwut form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lolwuts_path(@lolwut), :method => "post" do
      assert_select "input#lolwut_lolwut", :name => "lolwut[lolwut]"
    end
  end
end

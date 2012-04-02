require 'spec_helper'

describe "lolwuts/new.html.erb" do
  before(:each) do
    assign(:lolwut, stub_model(Lolwut,
      :lolwut => "MyString"
    ).as_new_record)
  end

  it "renders new lolwut form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lolwuts_path, :method => "post" do
      assert_select "input#lolwut_lolwut", :name => "lolwut[lolwut]"
    end
  end
end

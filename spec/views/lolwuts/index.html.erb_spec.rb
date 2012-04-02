require 'spec_helper'

describe "lolwuts/index.html.erb" do
  before(:each) do
    assign(:lolwuts, [
      stub_model(Lolwut,
        :lolwut => "Lolwut"
      ),
      stub_model(Lolwut,
        :lolwut => "Lolwut"
      )
    ])
  end

  it "renders a list of lolwuts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lolwut".to_s, :count => 2
  end
end

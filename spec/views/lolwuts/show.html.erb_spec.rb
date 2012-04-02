require 'spec_helper'

describe "lolwuts/show.html.erb" do
  before(:each) do
    @lolwut = assign(:lolwut, stub_model(Lolwut,
      :lolwut => "Lolwut"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lolwut/)
  end
end

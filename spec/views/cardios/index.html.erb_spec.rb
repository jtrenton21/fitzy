require 'spec_helper'

describe "cardios/index" do
  before(:each) do
    assign(:cardios, [
      stub_model(Cardio),
      stub_model(Cardio)
    ])
  end

  it "renders a list of cardios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end

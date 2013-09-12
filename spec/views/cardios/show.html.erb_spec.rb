require 'spec_helper'

describe "cardios/show" do
  before(:each) do
    @cardio = assign(:cardio, stub_model(Cardio))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end

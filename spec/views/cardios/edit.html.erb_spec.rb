require 'spec_helper'

describe "cardios/edit" do
  before(:each) do
    @cardio = assign(:cardio, stub_model(Cardio))
  end

  it "renders the edit cardio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cardio_path(@cardio), "post" do
    end
  end
end

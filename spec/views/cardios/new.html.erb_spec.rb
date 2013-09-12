require 'spec_helper'

describe "cardios/new" do
  before(:each) do
    assign(:cardio, stub_model(Cardio).as_new_record)
  end

  it "renders new cardio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cardios_path, "post" do
    end
  end
end

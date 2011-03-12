require 'spec_helper'

describe "designs/index.html.erb" do
  before(:each) do
    assign(:designs, [
      stub_model(Design,
        :user_id => 1,
        :description => "MyText",
        :tos => false
      ),
      stub_model(Design,
        :user_id => 1,
        :description => "MyText",
        :tos => false
      )
    ])
  end

  it "renders a list of designs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

require 'spec_helper'

describe "designs/show.html.erb" do
  before(:each) do
    @design = assign(:design, stub_model(Design,
      :user_id => 1,
      :description => "MyText",
      :tos => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end

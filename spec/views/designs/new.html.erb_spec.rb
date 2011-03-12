require 'spec_helper'

describe "designs/new.html.erb" do
  before(:each) do
    assign(:design, stub_model(Design,
      :user_id => 1,
      :description => "MyText",
      :tos => false
    ).as_new_record)
  end

  it "renders new design form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => designs_path, :method => "post" do
      assert_select "input#design_user_id", :name => "design[user_id]"
      assert_select "textarea#design_description", :name => "design[description]"
      assert_select "input#design_tos", :name => "design[tos]"
    end
  end
end

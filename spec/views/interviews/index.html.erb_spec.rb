require 'spec_helper'

describe "interviews/index.html.erb" do
  before(:each) do
    assign(:interviews, [
      stub_model(Interview,
        :name => "Name",
        :role_id => 1,
        :project_id => 1,
        :summary => "MyText",
        :interview_text => "MyText"
      ),
      stub_model(Interview,
        :name => "Name",
        :role_id => 1,
        :project_id => 1,
        :summary => "MyText",
        :interview_text => "MyText"
      )
    ])
  end

  it "renders a list of interviews" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

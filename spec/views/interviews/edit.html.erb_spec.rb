require 'spec_helper'

describe "interviews/edit.html.erb" do
  before(:each) do
    @interview = assign(:interview, stub_model(Interview,
      :name => "MyString",
      :role_id => 1,
      :project_id => 1,
      :summary => "MyText",
      :interview_text => "MyText"
    ))
  end

  it "renders the edit interview form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => interviews_path(@interview), :method => "post" do
      assert_select "input#interview_name", :name => "interview[name]"
      assert_select "input#interview_role_id", :name => "interview[role_id]"
      assert_select "input#interview_project_id", :name => "interview[project_id]"
      assert_select "textarea#interview_summary", :name => "interview[summary]"
      assert_select "textarea#interview_interview_text", :name => "interview[interview_text]"
    end
  end
end

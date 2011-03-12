require 'spec_helper'

describe "projects/new.html.erb" do
  before(:each) do
    assign(:project, stub_model(Project,
      :user_id => 1,
      :name => "MyString",
      :organization => "MyString",
      :cause => "MyString",
      :location => "MyString",
      :description => "MyText",
      :tos => false,
      :size_require => "MyString",
      :format_require => "MyString",
      :target_audience => "MyText",
      :three_things => "MyText",
      :colors_want => "MyText",
      :colors_donotwant => "MyText",
      :how_use => "MyText",
      :content_on_design => "MyText"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path, :method => "post" do
      assert_select "input#project_user_id", :name => "project[user_id]"
      assert_select "input#project_name", :name => "project[name]"
      assert_select "input#project_organization", :name => "project[organization]"
      assert_select "input#project_cause", :name => "project[cause]"
      assert_select "input#project_location", :name => "project[location]"
      assert_select "textarea#project_description", :name => "project[description]"
      assert_select "input#project_tos", :name => "project[tos]"
      assert_select "input#project_size_require", :name => "project[size_require]"
      assert_select "input#project_format_require", :name => "project[format_require]"
      assert_select "textarea#project_target_audience", :name => "project[target_audience]"
      assert_select "textarea#project_three_things", :name => "project[three_things]"
      assert_select "textarea#project_colors_want", :name => "project[colors_want]"
      assert_select "textarea#project_colors_donotwant", :name => "project[colors_donotwant]"
      assert_select "textarea#project_how_use", :name => "project[how_use]"
      assert_select "textarea#project_content_on_design", :name => "project[content_on_design]"
    end
  end
end

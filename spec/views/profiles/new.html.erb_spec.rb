require 'spec_helper'

describe "profiles/new.html.erb" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :first_name => "MyString",
      :last_name => "MyString",
      :screen_name => "MyString",
      :website => "MyString",
      :bio => "MyText",
      :agree => false
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path, :method => "post" do
      assert_select "input#profile_first_name", :name => "profile[first_name]"
      assert_select "input#profile_last_name", :name => "profile[last_name]"
      assert_select "input#profile_screen_name", :name => "profile[screen_name]"
      assert_select "input#profile_website", :name => "profile[website]"
      assert_select "textarea#profile_bio", :name => "profile[bio]"
      assert_select "input#profile_agree", :name => "profile[agree]"
    end
  end
end

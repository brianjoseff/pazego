require 'spec_helper'

describe "groups/new.html.erb" do
  before(:each) do
    assign(:group, stub_model(Group,
      :name => "MyString",
      :private => false,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => groups_path, :method => "post" do
      assert_select "input#group_name", :name => "group[name]"
      assert_select "input#group_private", :name => "group[private]"
      assert_select "textarea#group_description", :name => "group[description]"
    end
  end
end

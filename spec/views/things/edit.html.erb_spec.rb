require 'spec_helper'

describe "things/edit.html.erb" do
  before(:each) do
    @thing = assign(:thing, stub_model(Thing,
      :name => "MyString",
      :categories => "MyString",
      :description => "MyText",
      :price => 1,
      :borrow => false,
      :user_id => 1
    ))
  end

  it "renders the edit thing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => things_path(@thing), :method => "post" do
      assert_select "input#thing_name", :name => "thing[name]"
      assert_select "input#thing_categories", :name => "thing[categories]"
      assert_select "textarea#thing_description", :name => "thing[description]"
      assert_select "input#thing_price", :name => "thing[price]"
      assert_select "input#thing_borrow", :name => "thing[borrow]"
      assert_select "input#thing_user_id", :name => "thing[user_id]"
    end
  end
end

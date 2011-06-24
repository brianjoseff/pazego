require 'spec_helper'

describe "things/index.html.erb" do
  before(:each) do
    assign(:things, [
      stub_model(Thing,
        :name => "Name",
        :categories => "Categories",
        :description => "MyText",
        :price => 1,
        :borrow => false,
        :user_id => 1
      ),
      stub_model(Thing,
        :name => "Name",
        :categories => "Categories",
        :description => "MyText",
        :price => 1,
        :borrow => false,
        :user_id => 1
      )
    ])
  end

  it "renders a list of things" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Categories".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

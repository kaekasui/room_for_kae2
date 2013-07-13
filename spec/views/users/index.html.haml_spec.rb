require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :provider => "Provider",
        :uid => "Uid",
        :name => "Name",
        :screen_name => "Screen Name",
        :image => "Image"
      ),
      stub_model(User,
        :provider => "Provider",
        :uid => "Uid",
        :name => "Name",
        :screen_name => "Screen Name",
        :image => "Image"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Screen Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end

require 'spec_helper'

describe "blogs/new" do
  before(:each) do
    assign(:blog, stub_model(Blog,
      :title => "MyString",
      :blog_category_code => "MyString",
      :contents1 => "MyText",
      :contents2 => "MyText",
      :draft => false
    ).as_new_record)
  end

  it "renders new blog form" do
    pending "some reason"
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", blogs_path, "post" do
      assert_select "input#blog_title[name=?]", "blog[title]"
      assert_select "input#blog_blog_category_code[name=?]", "blog[blog_category_code]"
      assert_select "textarea#blog_contents1[name=?]", "blog[contents1]"
      assert_select "textarea#blog_contents2[name=?]", "blog[contents2]"
      assert_select "input#blog_draft[name=?]", "blog[draft]"
    end
  end
end

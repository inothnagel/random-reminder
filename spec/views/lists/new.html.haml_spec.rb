require 'spec_helper'

describe "lists/new" do
  before(:each) do
    assign(:list, stub_model(List,
      :user => nil,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lists_path, :method => "post" do
      assert_select "input#list_user", :name => "list[user]"
      assert_select "input#list_name", :name => "list[name]"
    end
  end
end
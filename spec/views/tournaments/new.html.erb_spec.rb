require 'spec_helper'

describe "tournaments/new" do
  before(:each) do
    assign(:tournament, stub_model(Tournament,
      :name => "MyString",
      :sponsor => "MyString",
      :location => "MyString",
      :prizes => "MyString",
      :entry_reqs => "MyString",
      :format => "MyString",
      :status => "MyString",
      :links => "MyString"
    ).as_new_record)
  end

  it "renders new tournament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tournaments_path, :method => "post" do
      assert_select "input#tournament_name", :name => "tournament[name]"
      assert_select "input#tournament_sponsor", :name => "tournament[sponsor]"
      assert_select "input#tournament_location", :name => "tournament[location]"
      assert_select "input#tournament_prizes", :name => "tournament[prizes]"
      assert_select "input#tournament_entry_reqs", :name => "tournament[entry_reqs]"
      assert_select "input#tournament_format", :name => "tournament[format]"
      assert_select "input#tournament_status", :name => "tournament[status]"
      assert_select "input#tournament_links", :name => "tournament[links]"
    end
  end
end

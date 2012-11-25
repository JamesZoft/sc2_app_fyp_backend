require 'spec_helper'

describe "tournaments/index" do
  before(:each) do
    assign(:tournaments, [
      stub_model(Tournament,
        :name => "Name",
        :sponsor => "Sponsor",
        :location => "Location",
        :prizes => "Prizes",
        :entry_reqs => "Entry Reqs",
        :format => "Format",
        :status => "Status",
        :links => "Links"
      ),
      stub_model(Tournament,
        :name => "Name",
        :sponsor => "Sponsor",
        :location => "Location",
        :prizes => "Prizes",
        :entry_reqs => "Entry Reqs",
        :format => "Format",
        :status => "Status",
        :links => "Links"
      )
    ])
  end

  it "renders a list of tournaments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sponsor".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Prizes".to_s, :count => 2
    assert_select "tr>td", :text => "Entry Reqs".to_s, :count => 2
    assert_select "tr>td", :text => "Format".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Links".to_s, :count => 2
  end
end

require 'spec_helper'

describe "tournaments/show" do
  before(:each) do
    @tournament = assign(:tournament, stub_model(Tournament,
      :name => "Name",
      :sponsor => "Sponsor",
      :location => "Location",
      :prizes => "Prizes",
      :entry_reqs => "Entry Reqs",
      :format => "Format",
      :status => "Status",
      :links => "Links"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Sponsor/)
    rendered.should match(/Location/)
    rendered.should match(/Prizes/)
    rendered.should match(/Entry Reqs/)
    rendered.should match(/Format/)
    rendered.should match(/Status/)
    rendered.should match(/Links/)
  end
end

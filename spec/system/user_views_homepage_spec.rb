require "rails_helper"

RSpec.describe "User views homepage" do
  it "renders the component correctly" do
    visit root_path

    expect(page).to have_css("p", text: "HELLO WORLD")
  end
end

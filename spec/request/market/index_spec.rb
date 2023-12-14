require "rails_helper"

RSpec.describe "Market Index", type: :request do
  it "returns a successful response", :vcr do
    get "/markets"
    expect(response).to be_successful
    expect(response.status).to eq(200)
  end
  it "properly displays data", :vcr do
    visit "/markets"
    expect(page).to have_content("Markets")
    expect(page).to have_button("More Info")
  end
end

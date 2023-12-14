require "rails_helper"

RSpec.describe "Markets Show", type: :request do
  it "returns a successful response", :vcr do
    get "/markets/322458"

    expect(response).to be_successful
    expect(response.status).to eq(200)
  end

  it "properly displays data", :vcr do
    visit "/markets/322458"

    expect(page).to have_content("14&U Farmers' Market")
    expect(page).to have_content("1400 U Street NW")
    expect(page).to have_content("Washington")
    expect(page).to have_content("District of Columbia")
  end

  it "has a link to the vendors", :vcr do
    visit "/markets/322458"
    expect(page).to have_link("The Charcuterie Corner")
    click_link "The Charcuterie Corner"
   
  end
end

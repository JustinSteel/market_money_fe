require "rails_helper"

RSpec.describe "Vendor Show", type: :request do
  it "returns a successful response", :vcr do
    get "/vendors/55823"

    expect(response).to be_successful
    expect(response.status).to eq(200)
  end

  it "properly displays data", :vcr do
    visit "/vendors/55823"

    expect(page).to have_content("The Charcuterie Corner")
    expect(page).to have_content("Claudie Langworth III")
    expect(page).to have_content("1-147-179-9747")
    expect(page).to have_content("Vendor selling a variety of artisanal cured meats and sausages.")
    expect(page).to have_content("credit accepted: No")
  end
end
require "rails_helper"

RSpec.describe "Markets Index", type: :request do
  it "returns a successful response" do
    get "/markets"
    expect(response).to be_successful
  end
end
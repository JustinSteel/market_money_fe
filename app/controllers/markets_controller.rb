class MarketsController < ApplicationController
  def index
    MarketFacade.all_markets
  end
end
class MarketsController < ApplicationController
  def index
    @markets = MarketFacade.all_markets
  end

  def show
    @market = MarketFacade.market(params[:id])
    @vendors = MarketFacade.vendors(params[:id])
  end
end
class MarketFacade
  def self.all_markets
    MarketService.new.all_markets[:results]
  end
end
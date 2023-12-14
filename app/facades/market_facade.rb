class MarketFacade
  def self.all_markets
    MarketService.all_markets.each do |market_data|
      Market.new(market_data)
    end
  end

  def self.market(id)
    response = MarketService.market(id)
    Market.new(response[:data])
  end

  def self.vendors(id)
    MarketService.market_vendors(id)[:data].map do |vendor_data|
      Vendor.new(vendor_data)
    end
  end
end

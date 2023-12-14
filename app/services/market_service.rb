class MarketService
  def self.all_markets
    response = get_url("/api/v0/markets")
    response[:data]
  end

  def self.market(id)
    response = get_url("/api/v0/markets/#{id}")
  end

  def self.market_vendors(id)
    response = get_url("/api/v0/markets/#{id}/vendors")
  end

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  private
  
  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
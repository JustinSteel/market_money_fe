class VendorService

  def self.vendor(id)
    r = get_url("/api/v0/vendors/#{id}")
  end

  private

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end
end
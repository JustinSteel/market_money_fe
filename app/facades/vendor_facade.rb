class VendorFacade

  def self.vendor(id)
    response = VendorService.vendor(id)[:data]
    Vendor.new(response)
  end
end
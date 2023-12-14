class Vendor
  attr_reader :name,
              :id,
              :description,
              :contact_name,
              :contact_phone,
              :credit_accepted

  def initialize(vendor_data)
    @name = vendor_data[:attributes][:name]
    @id = vendor_data[:id]
    @description = vendor_data[:attributes][:description]
    @contact_name = vendor_data[:attributes][:contact_name]
    @contact_phone = vendor_data[:attributes][:contact_phone]
    @credit_accepted = vendor_data[:attributes][:credit_accepted]
  end
end

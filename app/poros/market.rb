class Market
  attr_reader :name,
              :city,
              :state,
              :zip,
              :street,
              :id
 
  def initialize(data)
    @name = data[:attributes][:name]
    @city = data[:attributes][:city]
    @state = data[:attributes][:state]
    @zip = data[:attributes][:zip]
    @street = data[:attributes][:street]
    @id = data[:id]
  end
end

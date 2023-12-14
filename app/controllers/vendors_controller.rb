class VendorsController < ApplicationController
  def show
    @vendor = VendorFacade.vendor(params[:id])
  end
end
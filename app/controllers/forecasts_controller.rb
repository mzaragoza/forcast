# app/controllers/forecasts_controller.rb
class ForecastsController < ApplicationController
  before_action :set_address, :set_geocoder

  def show
    if params[:address]
      begin
      rescue => e
        flash.alert = e.message
      end
    end
  end

  private

  def set_address
    @address = params[:address]
    session[:address] = params[:address]
  end

  def set_geocoder
    if @address
      @geocoder = GeocoderService.call(@address)
    end
  end

end


# app/controllers/forecasts_controller.rb
class ForecastsController < ApplicationController
  before_action :set_address, :set_geocoder

  def show
    if params[:address]
      begin
        @forecast_cache_key = "#{@geocoder.country_code}/#{@geocoder.postal_code}"
        @forecast_cache_exist = Rails.cache.exist?(@forecast_cache_key)
        @forecast = Rails.cache.fetch(@forecast_cache_key, expires_in: Rails.application.config.weather_cache_expiry) do
          WeatherService.call(@geocoder.latitude, @geocoder.longitude)
        end
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


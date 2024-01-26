require 'rails_helper'
require 'webmock/rspec'

RSpec.describe WeatherService do
  describe '.call' do
    let(:latitude) { '12.345' }
    let(:longitude) { '67.890' }
    let(:api_key) { 'your_api_key' }

    before do
      allow(ENV).to receive(:[]).with('TOMORROW_IO_API_KEY').and_return(api_key)
    end

    context 'when API request is successful' do
      let(:response_body) { '{"temperature": 25.5, "conditions": "Clear"}' }

      before do
        stub_request(:get, "https://api.tomorrow.io/v4/weather/forecast?location=#{latitude},#{longitude}&apikey=#{api_key}")
          .to_return(status: 200, body: response_body, headers: {})
      end

      it 'returns the weather data' do
        weather_data = WeatherService.call(latitude, longitude)
        expect(weather_data["temperature"]).to eq(25.5)
        expect(weather_data["conditions"]).to eq("Clear")
      end
    end

  end
end


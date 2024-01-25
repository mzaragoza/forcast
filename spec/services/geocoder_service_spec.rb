require 'rails_helper'

RSpec.describe GeocoderService do
  describe '.call' do
    let(:address) { '1 Apple Park Way, Cupertino, California, 95014' }

    context 'when Geocoder returns a valid response' do
      let(:geocoder_response) do
        [
          double(data: {
            'lat' => '37.3299485',
            'lon' => '122.010309',
            'address' => {
              'country_code' => 'US',
              'postcode' => '94087'
            }
          })
        ]
      end

      before do
        allow(Geocoder).to receive(:search).with(address).and_return(geocoder_response)
      end

      it 'returns a Geocode object' do
        geocode = GeocoderService.call(address)
        expect(geocode).to be_an_instance_of(OpenStruct)
        expect(geocode.latitude).to eq(37.3299485)
        expect(geocode.longitude).to eq(122.010309)
        expect(geocode.country_code).to eq('US')
        expect(geocode.postal_code).to eq('94087')
      end
    end

    context 'when Geocoder returns an empty response' do
      before do
        allow(Geocoder).to receive(:search).with(address).and_return([])
      end

      it 'raises an IOError with an appropriate message' do
        expect { GeocoderService.call(address) }.to raise_error(IOError, 'Geocoder is empty: []')
      end
    end
  end
end


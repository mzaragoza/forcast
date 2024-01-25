Geocoder.configure(
    esri: {
        api_key: [
            ENV['GEOCODER_APP_ID'],
            ENV['GEOCODER_API_KEY'],
        ],
        for_storage: true
    }
)

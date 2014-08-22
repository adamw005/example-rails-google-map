Geocoder.configure(lookup: :test)

Geocoder::Lookup::Test.add_stub(
  "320 1st St N #711, Jacksonville Beach, FL 32250", [
    {
      'latitude'     => 30.29197,
      'longitude'    => -81.390562,
    }
  ]
)

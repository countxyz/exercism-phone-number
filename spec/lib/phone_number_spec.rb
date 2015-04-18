require 'phone_number'

RSpec.describe PhoneNumber do

  it 'will not accept a phone number shorter than 10 digits' do
    expect((PhoneNumber.new 123456789).verify_phone_number).to eq 'Bad Number'
  end
end

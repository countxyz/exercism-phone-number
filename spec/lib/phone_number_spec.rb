require 'phone_number'

RSpec.describe PhoneNumber do

  describe 'Unacceptable Numbers' do
    it 'will not accept a phone number shorter than 10 digits' do
      phone_number = PhoneNumber.new 123456789
      response     = '123456789 is a bad phone number'
      expect(phone_number.verify_phone_number).to eq response
    end

    it 'will not accept phone numbers longer than 11 digits' do
      phone_number = PhoneNumber.new 123456789012
      response     = '123456789012 is a bad phone number'
      expect(phone_number.verify_phone_number).to eq response
    end
  end

  describe 'Acceptable Numbers' do
    it 'will accept phone numbers that are 10 digits' do
      phone_number = PhoneNumber.new 1234567890
      response     = '1234567890 is a good number'
      expect(phone_number.verify_phone_number).to eq response
    end
  end

  describe 'Trimmed Numbers' do
    it 'will trim 11 digits and use last 10 when first digit is 1' do
      phone_number = PhoneNumber.new 12345678901
      response     = 'Number Trimmed: 2345678901'
      expect(phone_number.verify_phone_number).to eq response
    end

    it 'will not trim 11 digits and use last 10 when first digit not 1' do
      phone_number = PhoneNumber.new 22345678901
      response     = '22345678901 is a bad phone number'
      expect(phone_number.verify_phone_number).to eq response
    end
  end
end

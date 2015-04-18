class PhoneNumber

  def initialize phone_number
    @phone_number = phone_number
  end

  def verify_phone_number
    @phone_number.to_s =~ /\d{10}/ ? good_number_message : bad_number_message
  end

  def good_number_message
    'Good Number'
  end

  def bad_number_message
    'Bad Number'
  end
end

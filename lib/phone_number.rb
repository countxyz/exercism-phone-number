class PhoneNumber

  def initialize phone_number
    @phone_number = phone_number
  end

  def verify_phone_number
    if @phone_number =~ /\d{10}/
      good_number_message
    else
      bad_number_message
    end
  end

  def bad_number_message
    'Bad Number'
  end
end

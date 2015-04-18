class PhoneNumber

  def initialize phone_number
    @phone_number = phone_number.to_s
  end

  def verify_phone_number
    if @phone_number.size > 9
     good_number
    else
      bad_number_message
    end
  end

  private

  def good_number
    @phone_number.size == 10 ? good_number_message : trim_number_verification
  end

  def trim_number_verification
    @phone_number[0] == '1' ? trim_number : bad_number_message
  end

  def trim_number
    eleven_digit_trim
    trim_message
  end

  def eleven_digit_trim
    @phone_number = @phone_number[1..10]
  end

  def good_number_message
    "#{@phone_number} is a good number"
  end

  def trim_message
    "Number Trimmed: #{@phone_number}"
  end

  def bad_number_message
    "#{@phone_number} is a bad phone number"
  end
end

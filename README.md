# Exercism - Phone Number

Answer to
[Exercism Phone Task](https://github.com/exercism/x-common/blob/master/phone-number.md)
in Ruby using BDD with RSpec.

## Task

The rules are as follows:

* If the phone number is less than 10 digits assume that it is bad number

* If the phone number is 10 digits assume that it is good

* If the phone number is 11 digits and the first number is 1, trim the 1 and use
  the last 10 digits

* If the phone number is 11 digits and the first number is not 1, then it is a
  bad number

* If the phone number is more than 11 digits assume that it is a bad number

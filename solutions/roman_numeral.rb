def roman_numeral(string)
  values = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  total = 0
  last_num = 0

  string.chars.each do |char|
    current_value = values[char]
    current_value <= last_num ? total += current_value : total += (current_value - last_num * 2)
    last_num = current_value
  end

  total
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 1"
  puts roman_numeral('I')

  puts "Expecting: 9"
  puts roman_numeral('IX')

  puts "Expecting: 402"
  puts roman_numeral('CDII')

  puts "Expecting: 1,900"
  puts roman_numeral('CMM')

  puts "Expecting: 909"
  puts roman_numeral('CMIX')

  puts "Expecting: 4"
  puts roman_numeral('IVX')

  puts "Expecting: 1089"
  puts roman_numeral('IMXC')

  puts "Expecting: 2782"
  puts roman_numeral('XLDCMCDVXMLVII')

  puts "Expecting: 2918"
  puts roman_numeral('MLCDILDICVMXXV')
end

# Please add your pseudocode to this file
# create total variable
# create last_num variable
# create hash to convert letters to values
# iterate through string
# for each character
# convert character to int (using hash)
# if current value is less than or equal to last value
# add current value to total
# else add current value - last value to total
# update last value to current value

# And a written explanation of your solution
# Storing letter values in a hash
# total variable keeps track of total
# last_num variable keeps track of the previous number
# While iterating through string,
# getting value of current character from hash and saving it to current_value
# Using ternary to check against last_num.
# if current_value is less than or equal to last_num (eg: VI, II)
# we are simply adding the current value to the total
# its greater, we need to subtract the last_value from the total (b/c it was wrongly added already)
# AND subtract it from current_value before adding the current value to the total.
# Simplest way to do this is total += (current_value - last_num * 2)
# then we update the last_num to reflect the current number
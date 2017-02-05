# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.
#97 - 122
def find_missing_letter(range)
  numbers = []

  range.each_byte do |number|
    numbers << number
  end

  starting_point = numbers[0]
  ending_point = numbers.last

  new_array = []

  range_length = range.length

  range_length.times do
    new_array << starting_point.next
    starting_point += 1
  end

  missing_letter = ""
  counter = 0
  range_length.times do
    if new_array[counter] == numbers[counter + 1]
      counter += 1
    else
      missing_letter = new_array[counter]
    end
  end

  if missing_letter < ending_point
    return missing_letter.chr
  else
    return nil
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end

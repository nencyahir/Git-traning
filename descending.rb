 #Your task is to make a function that can take any non-negative integer as an argument and return 
 #it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.
#Input: 42145 Output: 54421
#Input: 145263 Output: 654321
#Input: 123456789 Output: 987654321

printf"Enter the number : "
number=gets.to_i

def descending_order(num)
  # Convert the number to a string and split it into an array of digits
  digits = num.to_s.split("").map(&:to_i)
  # Sort the digits in descending order
  digits.sort! { |a, b| b <=> a }
  # Join the sorted digits into a string and convert back to an integer
  digits.join("").to_i
  puts "descending order is #{digits.join.to_i}"
end

descending_order(number)

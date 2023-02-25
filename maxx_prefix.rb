#Write a function to find the longest common prefix string amongst an array of strings.
#Input: string = ["challenge","characteristic","champion"] 
#Expected output: "cha"

str = ["challenge","characteristic","champion"]

def longest_common_prefix(str)
  return "" if str.empty?
  prefix = str.first
  str.each do |s|
    while s.index(prefix) != 0
      prefix = prefix[0...-1]
      return "" if prefix.empty?
    end
  end
  puts "longest common prefix is #{prefix}"
end

longest_common_prefix(str)

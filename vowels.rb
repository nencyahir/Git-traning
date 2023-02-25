def reverse_vowels(s)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  start = 0
  endd = s.length - 1
  while start < endd
    if vowels.include?(s[start]) && vowels.include?(s[endd])
      s[start], s[endd] = s[endd], s[start]
   start=start+1
   endd=endd-1
    elsif vowels.include?(s[start])
      endd -= 1
    elsif vowels.include?(s[endd])
      start += 1
    else
      start += 1
      endd -= 1
   end
  end
  puts s
end

reverse_vowels("communication")

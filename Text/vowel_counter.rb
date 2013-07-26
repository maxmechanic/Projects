require 'pp'

def vowel_count(text)

  a = text.scan(/a/).length
  e = text.scan(/e/).length
  i = text.scan(/i/).length
  o = text.scan(/o/).length
  u = text.scan(/u/).length

  vowels = {
    'total' => (a+e+i+o+u),
    'a' => a,
    'e' => e,
    'i' => i,
    'o' => o,
    'u' => u
  }

  return vowels
end

print 'Count some vowels: '
input = gets.strip
output = vowel_count(input)
puts output


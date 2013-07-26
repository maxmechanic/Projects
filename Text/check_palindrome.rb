class String
  def palindrome?
    self == self.reverse ? true : false
  end
end

print 'palindrome check: '
input = gets.strip
if input.palindrome?
  puts 'palindrome.'
else
  puts 'not a palindrome.'
end
def pig(text)
  text_arr = text.split
  pig_text = text_arr.map { |word|
    if /[[:punct:]]\A/.match(word)
      word[0] + word[2..-1] + '-' + word[1] + 'ay'
    elsif /[[:punct:]]\z/.match(word)
      word[1..-2] + '-' + word[0] + 'ay' + word[-1]
    elsif word.length > 2
      word[1..-1] + '-' + word[0] + 'ay'
    else
      word + '-ay'
    end
  }
  return pig_text.join(' ')
end

print 'Text: '
input = gets.strip
output = pig(input)
puts output

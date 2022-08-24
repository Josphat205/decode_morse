def decode_char(char)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_code.each do |key, value|
    return value if key == char
  end
end

def decode_word(word)
  res = ''
  word.split
    .each do |letter|
    res += decode_char(letter)
  end
  res
end

def decode_message(message)
  res1 = []
  message.split('   ').each do |word|
    res1.push(decode_word(word).to_s)
  end
  puts res1.join(' ')
end

puts decode_char('.-')
puts decode_word('-- -.--')
decode_message('-- -.--   -. .- -- .')
decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

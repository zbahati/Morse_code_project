def decorder_word(morse_char)
  morse_decoder = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_word = morse_char.split
  morse_splited = decode_word_splited(morse_word, morse_decoder)
  morse_splited.join
end

def decode_word_splited(morse_word, morse_decoder)
  morse_word.map { |character| morse_decoder[character] }
end

print decorder_word('-- -.--')

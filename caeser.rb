ALPHABET_ARR = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def caeser_cipher(str, shift)
  ciphered = str.split("").map {|char| letter_shift(char, shift)}
  p ciphered.join("")
end

def letter_shift(char, shift)
  char_pos = ALPHABET_ARR.find_index(char)
  alphabet_size = 25

  # Using 25 instead of 26 because we're based 0
  if shift >= 0
    total_shift = char_pos + shift
  
    if total_shift > alphabet_size 
      shift = total_shift - alphabet_size
      char_pos = -1
    end
  else
    if char_pos + shift < 0
      shift += char_pos
      char_pos = 26
    end
  end 


  ALPHABET_ARR[char_pos + shift]
end

caeser_cipher("welcome", -5)


# NOTE: I like this solution a lot better. Took a very odd approach for mine, but it works just as well
# def caesar_cipher(text, shift)
#   shift = shift % 26 # Ensure the shift wraps around the alphabet
#   text.chars.map do |char|
#     if char.match(/[a-z]/) # Lowercase letters
#       ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
#     elsif char.match(/[A-Z]/) # Uppercase letters
#       ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
#     else
#       char # Non-alphabetic characters remain unchanged
#     end
#   end.join
# end

# puts caesar_cipher("welcome", -5)

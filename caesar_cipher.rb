# Encrypt words by moving their index
def caesar_cipher(string, number)
  # String to array
  string_array = string.split(//)

  shifted_array = string_array.map do |char|
    if char.match?(/[A-Za-z]/)
      # ASCII index number
      char.ord
      # Shift index
      shifted_value = char.ord + number
      # Lowercase
      if char.ord > 96 && shifted_value > 122
        shifted_value -= 26
      # Uppercase
      elsif char.ord > 65 && char.ord < 91 && shifted_value > 90
        shifted_value -= 26
      end
      # Back to string
      shifted_characters = shifted_value.chr
    # Non-characters
    else

      char
    end
  end
  puts shifted_array.join
end

puts caesar_cipher('abc ABC!', 1)

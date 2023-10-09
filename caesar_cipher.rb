class Encryption

  # Encrypt words by moving their index
  def caesar_cipher(string, number)
    # String to array
    string_array = string.split(//)

    # Convert ASCII index number, shift index for upper and lowercase, convert back to string
    shifted_array = string_array.map do |char|
      if char.match?(/[A-Za-z]/)

        char.ord
        shifted_value = char.ord + number

        if char.ord > 96 && shifted_value > 122
          shifted_value -= 26
        elsif char.ord > 65 && char.ord < 91 && shifted_value > 90
          shifted_value -= 26
        end
        shifted_characters = shifted_value.chr
      # Handle non-characters 
      else
        char
      end
    end
    shifted_array.join
  end
end

encrypt = Encryption.new
p encrypt.caesar_cipher('abc ABC!', 1)

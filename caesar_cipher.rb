#Caesar cipher most commonly known encrption techniques
#each letter in plain text is replaced by a fixed letter 
#take in string and number then output modified string
#convert string into number?
#wrap Z to A
#keep same case
#takes series of letter and substitutes down the alphabet
#"A", 1" = B
#"U", 7 = B // by changing 26-7=19 positions
#"Z", 1' = 26-1 or 25 positions

#psuedo code = given letter, convert to number, shift position, then convert back to string


def caesar_cipher (string, number)
	#string input > convert to array > iterate with map and transform to ASCII value > output variable
	#shift ASCII value up by variable number 
  #Convert number value back to letter and join to string
	
	ascii_value = string.chars.map(&:ord)
	shifted_value = ascii_value.map {|c| c + number}
	shifted_string = shifted_value.map {|c| c.chr}.join 

	p "Original string: #{string}"
	p "ASCII value: #{ascii_value}"
	p "Shifted ASCII: #{ascii_value}"
	p "Shifted string: #{shifted_string}"

end

puts caesar_cipher("abc",1)
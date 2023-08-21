#Function takes in string and number inputs
def caesar_cipher (string, number)
	#Convert into array
	string_array = string.split(//)
	
	#Iterate through array with map to transform each element
	shifted_array = string_array.map do |char|
		#If element "char" is alphabetical
		if char.match?(/[A-Za-z]/)
		#Convert to ASCII
		char.ord
		#Shift value by given number input
		shifted_value = char.ord + number
			#Lowercase values, loops after z
			if char.ord > 96 && shifted_value > 122
				shifted_value = shifted_value - 26
			#Uppercase to loop after Z
			elsif char.ord > 65 && char.ord < 91 && shifted_value > 90
				shifted_value = shifted_value - 26
			end
		#Convert back to letter
		 shifted_characters = shifted_value.chr
		#Leave character alone if not alphabetical
		else 
			char
		end

	end
	puts shifted_array.join
end

puts caesar_cipher("abc ABC!", 1)
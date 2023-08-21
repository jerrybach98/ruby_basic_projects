string = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, dictionary)
	#Convert string to lowercase array elements
	array = string.downcase.split(" ")
	
	#Iterate through string array with reduce, transform array to new hash
	array.reduce(Hash.new(0)) do |instances, word|
		#Iterate through dictionary elements, if each string word matches an element word, add an instance
		dictionary.each do |element|
			if word.include?(element)
				instances[element] += 1
			end
		end
		#Store each iteration match in instances
		instances
	end

end

puts substrings(string, dictionary) 
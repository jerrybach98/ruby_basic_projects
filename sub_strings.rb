#take word as argument and array of substrings (dictionary) as second argument
#return hash listing each substring (case insensitive), found in original string and how many times it was found
#Tip recall how to turn string into array and vice versa

#Psuedo
#convert each word to lowercase and array
#match each word to dictionary with reduce(hash.new)
#Return hashes of matches with hash to instances 

word = "Below sit"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(word, dictionary)
	p word
	p dictionary
	word.downcase.split(" ")

	dictionary.reduce(Hash.new(0)) do |instances, word|
		instances[word] += 1
		instances
	end
end

p substrings(word, dictionary) 
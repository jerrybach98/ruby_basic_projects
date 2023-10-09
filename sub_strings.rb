string = "Howdy partner, sit down! How's it going?"
dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
  # Convert string to lowercase array elements
  array = string.downcase.split(' ')

  # Iterate through string array with reduce, transform array to new hash
  array.each_with_object(Hash.new(0)) do |word, instances|
    # Iterate through dictionary elements, if each string word matches an element word, add an instance
    dictionary.each do |element|
      instances[element] += 1 if word.include?(element)
    end
    # Store each iteration match in instances
  end
end

puts substrings(string, dictionary)

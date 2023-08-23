#Takes an array and returns a sorted array using the bubble sort methodology

def bubble_sort (array)
  first_position = 0
	second_position = 0
	n = array.length - 1

	n.times do
		swapped = false

		array.each_with_index do |num, index|
			if index > 0
				first_position = index - 1
				second_position = index

				if array[first_position] > num
					array[first_position], array[second_position] = array[second_position], array[first_position]
				swapped = true
				end
			end

		end

		if swapped == false
			break
		end

	end
p array
end
bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]
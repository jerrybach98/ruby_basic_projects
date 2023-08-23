#Takes an array and returns a sorted array using the bubble sort methodology
#sort two elements of array, then move to next two elements
#After each iteration the right most number will be sorted, highest number bubble up to right
#for each element in the list, look at elementto right, if left>right swap the two
#current array takes 5 pass throughs
#Don't need to check right most element at iteration amount
#Check if already sorted, add variable swap, or make counter of swaps to know when finished
#


#[4,3,78,2,0,2]
def bubble_sort (array)
  first_position = 0
	second_position = 0
	first_num = array[first_position]
	
	
	#unused for future
	second_num = array[1]
	n = array.length
	# n.times do 


	array.each_with_index do |num, index|
		if index > 0
		p first_position = index - 1
			p second_position = index
		end
		
		if first_num > num
			array[first_position], array[second_position] = array[second_position], array[first_position]
			
			#code stopping before final iteration
		end
		p "iterations #{array}"



	end 



end

bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]
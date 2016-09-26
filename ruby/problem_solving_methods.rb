#release 0
arr = [1,2,3,4,5,6,7]

def search_array (arr, int)
	index = 0
	while index < arr.length
		if arr[index] == int
			return index	
		end
		index += 1
	end
	return nil
end
p search_array(arr, 7)

#release 1

def fib(int)
	arr = [0,1]
	if int == 0
		arr = [0]
	elsif int == 1
		arr ==[0,1]
	end
index = 2
	while index < int
		arr[index] = arr[index-2] + arr[index-1]
		index +=1
	end
	return arr
end

p fib(7)
p fib(100)[-1]

#release 2

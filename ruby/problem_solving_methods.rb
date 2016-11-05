#Release 0: Implement a Simple Search
	#Define Array
	numbers = [5, 7, 10, 43, 83, 23, 90]

	#Define Method
	def search_num(num, i)

		count = 0

		until count > num.length
			if i == num[count]
				puts "#{num[count]} is in the array! #{count} is the index!"
				break
			elsif nil == num[count]
				puts "#{i} is not in the array."
			end

			count += 1
		end
	end

	search_num(numbers, 7)
	search_num(numbers, 14)
	search_num(numbers, 83)
	search_num(numbers, 6)

# Release 1: Calculate Fibonacci Numbers

	def fib (x)
		#Initalize array
		init = [0,1]

		#Counter
		count = 1

		#Max index
		i = x - 1

		#Until Loop
		until count == i

			init << init[count - 1] + init[count]

			count += 1
		end
		p init
	end

	fib(6)
	fib(10)
	fib(59)
	fib(100)

# Release 2: Sort an Array

	#Define method

		#find length of array

		#loop according to length (x-1) times for length x

		#compare content of numbers in array

		#end loop when sorted

		#display sorted array


def sort(array)
	x = array.length
	loop do
		changed = false

		(x-1).times do |y|
			if array[y] > array [y+1]
				array[y], array[y+1] = array[y+1], array[y]
				changed = true
			end
		end

		break if not changed
	end
	array
end

	first = [3, 9, 5, 10, 2, 85, 1 ]
	second = [ 31412, 213, 45678, 2, 1]

p "Before sort"
p first
p "After sort"
p sort(first)
p "Before sort"
p second
p "After sort"
p sort(second)

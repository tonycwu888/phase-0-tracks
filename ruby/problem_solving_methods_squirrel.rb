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

	search_num(numbers, 10)
	search_num(numbers, 44)
	search_num(numbers, 83)
	search_num(numbers, 88)
  puts "======================="

# Release 1: Calculate Fibonacci Numbers

  	def fib (x)
  		init = [0,1]
  		count = 1
  		i = x - 1
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

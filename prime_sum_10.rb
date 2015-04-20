#10) 

#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def prime(num)
	prime = true
	if num < 2
		return false
	elsif num != num.round
		return false
	end

    i=2
	(i...num).each do 
    	if num%i == 0
      	return false
		end
  		i+=1
  	end
	return prime
end


def sums(num)
	sum_arr = []
	(2..num).each do |x|
		if prime(x)==true
			sum_arr << x
		end
		x+=1
	end
	puts sum_arr.inject(:+)
end

sums(2_000_000)